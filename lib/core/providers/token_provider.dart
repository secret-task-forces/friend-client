import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/constants/app_keys.dart';
import 'package:flutter_template/features/account/data/models/request/refresh_token_model.dart';
import 'package:flutter_template/core/sdk/storage_sdk.dart';
import 'package:flutter_template/features/account/di/account_module.dart';
import 'package:flutter_template/features/account/domain/entities/token.dart';
import 'package:flutter_template/features/account/domain/repositories/account_repository.dart';

class TokenStateNotifier extends AsyncNotifier<Token?> {
  AccountRepository get _accountRepository =>
      ref.watch(accountRepositoryProvider);

  TokenStateNotifier();

  @override
  Future<Token?> build() async {
    final String accessToken = await StorageSdk.get(AppKeys.ACCESS_TOKEN) ?? '';
    final String refreshToken =
        await StorageSdk.get(AppKeys.REFRESH_TOKEN) ?? '';

    return Token(
      id: -1,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }

  Future<bool> isValidToken() async {
    while (!state.hasValue) {
      await Future.delayed(const Duration(milliseconds: 300));
    }

    return state.requireValue != null && state.requireValue!.hasValidTokens;
  }

  Future<void> updateToken(Token token) async {
    await StorageSdk.put(key: AppKeys.ACCESS_TOKEN, value: token.accessToken);
    await StorageSdk.put(key: AppKeys.REFRESH_TOKEN, value: token.refreshToken);

    state = AsyncData(token);
  }

  Future<void> unAuth({bool withLogout = true}) async {
    if (withLogout) {
      await _accountRepository.logout(
        refreshTokenModel:
            RefreshTokenModel(refreshToken: state.requireValue!.refreshToken),
      );
    }

    await StorageSdk.put(key: AppKeys.ACCESS_TOKEN, value: '');
    await StorageSdk.put(key: AppKeys.REFRESH_TOKEN, value: '');

    state = const AsyncData(null);
  }
}
