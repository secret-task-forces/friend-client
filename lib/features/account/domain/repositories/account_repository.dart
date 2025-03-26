import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/features/account/data/models/request/patch_consent_model.dart';
import 'package:flutter_template/features/account/data/models/request/put_consent_model.dart';
import 'package:flutter_template/features/account/data/models/request/put_fcm_token_model.dart';
import 'package:flutter_template/features/account/data/models/request/refresh_token_model.dart';
import 'package:flutter_template/features/account/data/models/request/sign_in_model.dart';
import 'package:flutter_template/features/account/data/models/request/sign_up_model.dart';
import 'package:flutter_template/features/account/domain/entities/account.dart';
import 'package:flutter_template/features/account/domain/entities/notification_consent.dart';
import 'package:flutter_template/features/account/domain/entities/token.dart';

abstract class AccountRepository {
  Future<Either<DioException, Token>> signup(
      {required SignUpModel signUpModel});

  Future<Either<DioException, void>> logout(
      {required RefreshTokenModel refreshTokenModel});

  Future<Either<DioException, Token>> login({required SignInModel signInModel});

  Future<Either<DioException, Token>> accessToken(
      {required RefreshTokenModel refreshTokenModel});

  Future<Either<DioException, void>> patchFcmToken(
      {required PutFcmTokenModel fcmToken});

  Future<Either<DioException, NotificationConsent>> putConsent(
      {required PutConsentModel putConsentModel});

  Future<Either<DioException, bool>> patchConsent(
      {required PatchConsentModel patchConsentModel});

  Future<Either<DioException, Account>> getMyAccount();

  Future<Either<DioException, void>> withdrawal(
      {required List<String> reasons});

  Future<Either<DioException, Token>> testLogin();
}
