import 'package:flutter_template/core/network/app_boolean_response.dart';
import 'package:flutter_template/features/account/data/models/request/patch_consent_model.dart';
import 'package:flutter_template/features/account/data/models/request/post_withdrawal_model.dart';
import 'package:flutter_template/features/account/data/models/request/put_consent_model.dart';
import 'package:flutter_template/features/account/data/models/request/put_fcm_token_model.dart';
import 'package:flutter_template/features/account/data/models/request/refresh_token_model.dart';
import 'package:flutter_template/features/account/data/models/request/sign_in_model.dart';
import 'package:flutter_template/features/account/data/models/request/sign_up_model.dart';
import 'package:flutter_template/features/account/data/models/response/account_model.dart';
import 'package:flutter_template/features/account/data/models/response/put_consent_result_model.dart';
import 'package:flutter_template/features/account/data/models/response/token_model.dart';

abstract class AccountDataSource {
  Future<TokenModel> signup({required SignUpModel signUpModel});
  Future<void> logout({required RefreshTokenModel refreshTokenModel});
  Future<TokenModel> login({required SignInModel signInModel});
  Future<TokenModel> accessToken(
      {required RefreshTokenModel refreshTokenModel});
  Future<void> patchFcmToken({required PutFcmTokenModel fcmToken});
  Future<PutConsentResultModel> putConsent(
      {required PutConsentModel putConsentModel});
  Future<AppBooleanResponse> patchConsent(
      {required PatchConsentModel patchConsentModel});

  Future<AccountModel> getMyAccount();
  Future<void> withdrawal({required PostWithdrawalModel postWithdrawalModel});
  Future<TokenModel> testLogin();
}
