import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/network/app_client.dart';
import 'package:flutter_template/core/constants/app_keys.dart';
import 'package:flutter_template/core/sdk/storage_sdk.dart';
import 'package:flutter_template/core/utils/logger/logger.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:flutter_template/features/account/data/models/request/refresh_token_model.dart';
import 'package:flutter_template/features/account/domain/repositories/account_repository.dart';

import '../../../features/account/data/datasources/remote/account_api_paths.dart';

const inspectPathList = [
  AccountApiPaths.accessToken,
  AccountApiPaths.login,
  AccountApiPaths.logout,
];

class AppAuthInterceptor extends Interceptor {
  final WidgetRef ref;
  final AccountRepository _accountRepository;

  AppAuthInterceptor(
    this._accountRepository, {
    required this.ref,
  });

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers['accessToken'] == 'true') {
      options.headers.remove('accessToken');
      final accessToken = await StorageSdk.get(AppKeys.ACCESS_TOKEN);

      options.headers.addAll({'authorization': 'Bearer $accessToken'});
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final refreshToken = await StorageSdk.get(AppKeys.REFRESH_TOKEN);

    if (refreshToken == null) {
      return handler.reject(err);
    }

    final needRefreshToken = err.response?.statusCode == 401;

    final skipRefreshToken = inspectPathList.contains(err.requestOptions.path);

    if (needRefreshToken && !skipRefreshToken) {
      final dio = AppClient.client;

      final result = await _accountRepository.accessToken(
          refreshTokenModel: RefreshTokenModel(refreshToken: refreshToken));

      return result.fold(
        (l) {
          Logging.log('Refresh token ->  error : $l');
          ref.read(tokenProvider.notifier).unAuth(withLogout: false);
          return handler.reject(l);
        },
        (r) async {
          await StorageSdk.put(key: AppKeys.ACCESS_TOKEN, value: r.accessToken);

          err.requestOptions.headers['Authorization'] =
              'Bearer ${r.accessToken}';

          final response = await dio.fetch(err.requestOptions);

          return handler.resolve(response);
        },
      );
    }

    return handler.next(err);
  }
}
