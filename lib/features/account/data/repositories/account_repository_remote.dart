import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/features/account/data/datasources/account_data_source.dart';
import 'package:flutter_template/features/account/data/mappers/mapper.dart';
import 'package:flutter_template/features/account/data/models/request/patch_consent_model.dart';
import 'package:flutter_template/features/account/data/models/request/post_withdrawal_model.dart';
import 'package:flutter_template/features/account/data/models/request/put_consent_model.dart';
import 'package:flutter_template/features/account/data/models/request/put_fcm_token_model.dart';
import 'package:flutter_template/features/account/data/models/request/refresh_token_model.dart';
import 'package:flutter_template/features/account/data/models/request/sign_in_model.dart';
import 'package:flutter_template/features/account/data/models/request/sign_up_model.dart';
import 'package:flutter_template/features/account/data/models/response/token_model.dart';
import 'package:flutter_template/features/account/domain/entities/account.dart';
import 'package:flutter_template/features/account/domain/entities/notification_consent.dart';
import 'package:flutter_template/features/account/domain/entities/token.dart';

import '../../domain/repositories/account_repository.dart';

class AccountRepositoryRemote implements AccountRepository {
  final AccountDataSource _client;

  AccountRepositoryRemote(this._client);

  @override
  Future<Either<DioException, Token>> signup(
      {required SignUpModel signUpModel}) async {
    try {
      final TokenModel response =
          await _client.signup(signUpModel: signUpModel);
      return right(response.toEntity()); // TokenModel을 Token으로 변환
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, void>> logout(
      {required RefreshTokenModel refreshTokenModel}) async {
    try {
      final response =
          await _client.logout(refreshTokenModel: refreshTokenModel);

      return right(response);
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, Token>> login(
      {required SignInModel signInModel}) async {
    try {
      final TokenModel response = await _client.login(signInModel: signInModel);

      return right(response.toEntity());
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, Token>> accessToken(
      {required RefreshTokenModel refreshTokenModel}) async {
    try {
      final TokenModel response =
          await _client.accessToken(refreshTokenModel: refreshTokenModel);

      return right(response.toEntity());
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, void>> patchFcmToken(
      {required PutFcmTokenModel fcmToken}) async {
    try {
      final response = await _client.patchFcmToken(fcmToken: fcmToken);

      return right(response);
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, NotificationConsent>> putConsent(
      {required PutConsentModel putConsentModel}) async {
    try {
      final response =
          await _client.putConsent(putConsentModel: putConsentModel);

      return right(response.toEntity());
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, bool>> patchConsent(
      {required PatchConsentModel patchConsentModel}) async {
    try {
      final response =
          await _client.patchConsent(patchConsentModel: patchConsentModel);

      return right(response.result);
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, Account>> getMyAccount() async {
    try {
      final response = await _client.getMyAccount();

      return right(response.toEntity());
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, void>> withdrawal(
      {required List<String> reasons}) async {
    try {
      final response = await _client.withdrawal(
          postWithdrawalModel: PostWithdrawalModel(reasons: reasons));

      return right(response);
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, Token>> testLogin() async {
    try {
      final TokenModel response = await _client.testLogin();

      return right(response.toEntity());
    } on DioException catch (e) {
      return left(e);
    }
  }
}
