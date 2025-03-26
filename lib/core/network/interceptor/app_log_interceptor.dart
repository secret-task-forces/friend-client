import 'package:dio/dio.dart';
import 'package:flutter_template/core/constants/app_keys.dart';
import 'package:flutter_template/core/sdk/storage_sdk.dart';
import 'package:flutter_template/core/utils/logger/logger.dart';

class AppLogInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    Logging.req(
      title: 'REQUEST',
      method: options.method,
      contentType: options.responseType.name,
      accessToken: options.headers['authorization'],
      refreshToken: await StorageSdk.get(AppKeys.REFRESH_TOKEN),
      url: '${options.baseUrl}${options.path}',
      query: options.queryParameters,
      body: options.data,
    );

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    Logging.errorLog(
      statusCode: err.response?.statusCode,
      detail: err.message,
      error: err.response,
    );

    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Logging.res(
      title: 'RESPONSE',
      url: '${response.requestOptions.baseUrl}${response.requestOptions.path}',
      method: response.requestOptions.method,
      body: response.data,
      status: response.statusCode.toString(),
    );

    super.onResponse(response, handler);
  }
}
