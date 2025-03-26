import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_template/features/account/data/datasources/account_data_source.dart';
import 'package:flutter_template/features/account/data/models/request/patch_consent_model.dart';
import 'package:flutter_template/features/account/data/models/request/post_withdrawal_model.dart';
import 'package:flutter_template/features/account/data/models/request/put_consent_model.dart';
import 'package:flutter_template/features/account/data/models/request/put_fcm_token_model.dart';
import 'package:flutter_template/features/account/data/models/response/account_model.dart';
import 'package:flutter_template/features/account/data/models/response/put_consent_result_model.dart';
import 'package:flutter_template/features/account/data/models/request/refresh_token_model.dart';
import 'package:flutter_template/features/account/data/models/request/sign_in_model.dart';
import 'package:flutter_template/features/account/data/models/request/sign_up_model.dart';
import 'package:flutter_template/features/account/data/models/response/token_model.dart';
import 'package:flutter_template/core/network/app_boolean_response.dart';
import 'package:retrofit/retrofit.dart';

import 'account_api_paths.dart';
part 'account_remote_data_source.g.dart';

@RestApi()
abstract class AccountRemoteDataSource implements AccountDataSource {
  factory AccountRemoteDataSource(
    Dio dio,
  ) = _AccountRemoteDataSource;

  @override
  @POST(AccountApiPaths.signup)
  Future<TokenModel> signup({@Body() required SignUpModel signUpModel});

  @override
  @POST(AccountApiPaths.logout)
  @Headers({'accessToken': 'true'})
  Future<void> logout({@Body() required RefreshTokenModel refreshTokenModel});

  @override
  @POST(AccountApiPaths.login)
  @Headers({'accessToken': 'true'})
  Future<TokenModel> login({@Body() required SignInModel signInModel});

  @override
  @POST(AccountApiPaths.accessToken)
  Future<TokenModel> accessToken(
      {@Body() required RefreshTokenModel refreshTokenModel});

  @override
  @PATCH(AccountApiPaths.fcmToken)
  @Headers({'accessToken': 'true'})
  Future<void> patchFcmToken({@Body() required PutFcmTokenModel fcmToken});

  @override
  @PUT(AccountApiPaths.consent)
  @Headers({'accessToken': 'true'})
  Future<PutConsentResultModel> putConsent(
      {@Body() required PutConsentModel putConsentModel});

  @override
  @PATCH(AccountApiPaths.consent)
  @Headers({'accessToken': 'true'})
  Future<AppBooleanResponse> patchConsent(
      {@Body() required PatchConsentModel patchConsentModel});

  @override
  @GET(AccountApiPaths.my)
  @Headers({'accessToken': 'true'})
  Future<AccountModel> getMyAccount();

  @override
  @POST(AccountApiPaths.withdrawal)
  @Headers({'accessToken': 'true'})
  Future<void> withdrawal(
      {@Body() required PostWithdrawalModel postWithdrawalModel});

  @override
  @POST(AccountApiPaths.testLogin)
  Future<TokenModel> testLogin();
}
