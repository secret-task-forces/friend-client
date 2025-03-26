import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:flutter_template/config/build_env.dart';
import 'package:flutter_template/features/account/data/models/request/sign_in_model.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class SnsLoginSdk {
  static Future<void> initSnsLogin() async {
    KakaoSdk.init(
      nativeAppKey: Env.KAKAO_NATIVE_KEY,
      javaScriptAppKey: Env.KAKAO_JS_KEY,
    );
  }

  static Future<Either<String?, SignInModel?>> signInWithKakao() async {
    log(await KakaoSdk.origin);

    if (await isKakaoTalkInstalled()) {
      try {
        var result = await UserApi.instance.loginWithKakaoTalk();
        var user = await UserApi.instance.me();
        var email = user.kakaoAccount?.email;
        var token = result.accessToken;

        if (email != null) {
          return Right(SignInModel(socialType: 'KAKAO', socialKey: token));
        }
      } catch (error) {
        if (error is PlatformException && error.code == 'CANCELED') {
          return Left(error.code);
        }

        try {
          var result = await UserApi.instance.loginWithKakaoAccount();
          var user = await UserApi.instance.me();
          var email = user.kakaoAccount?.email;
          var token = result.idToken;

          if (email != null && token != null) {
            return Right(SignInModel(socialType: 'KAKAO', socialKey: token));
          }
        } on PlatformException catch (error) {
          log(error.toString());
          return Left(error.code);
        } catch (error) {
          log(error.toString());
          return Left(null);
        }
      }
    } else {
      try {
        var result = await UserApi.instance.loginWithKakaoAccount();
        var user = await UserApi.instance.me();
        var email = user.kakaoAccount?.email;
        var token = result.accessToken;

        if (email != null) {
          return Right(SignInModel(socialType: 'KAKAO', socialKey: token));
        }
      } catch (error) {
        log(error.toString());
        return Left(null);
      }
    }

    return Left(null);
  }

  static Future<Either<AuthorizationErrorCode?, SignInModel?>>
      signInWithApple() async {
    try {
      final AuthorizationCredentialAppleID credential =
          await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        webAuthenticationOptions: WebAuthenticationOptions(
          clientId: "4FL6S75HXY",
          redirectUri: Uri.parse(
            "https://new-phone-my-phone-custo-c88a6.firebaseapp.com/__/auth/handler",
          ),
        ),
      );

      if (credential.userIdentifier == null) {
        return Left(null);
      }

      return Right(SignInModel(
        socialType: 'APPLE',
        socialKey: credential.userIdentifier!,
        subSocialKey: credential.identityToken,
      ));
    } on SignInWithAppleAuthorizationException catch (error) {
      return Left(error.code);
    } catch (error) {
      return Left(null);
    }
  }
}
