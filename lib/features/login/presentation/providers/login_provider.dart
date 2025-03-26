import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:flutter_template/features/account/data/models/request/sign_in_model.dart';
import 'package:flutter_template/features/account/di/account_module.dart';
import 'package:flutter_template/features/account/domain/repositories/account_repository.dart';
import 'package:flutter_template/features/login/enums/login_error.dart';
import 'package:flutter_template/features/login/di/sign_up_module.dart';
import 'package:flutter_template/core/sdk/sns_login_sdk.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'login_state.dart';

class LoginViewModel extends AutoDisposeNotifier<LoginState> {
  AccountRepository get _accountRepository =>
      ref.watch(accountRepositoryProvider);

  @override
  LoginState build() {
    return LoginState.init();
  }

  Future<void> testLogin() async {
    final result = await _accountRepository.testLogin();

    result.fold(
      (l) => throw Exception(l),
      (r) {
        state = state.copyWith(isTestLogin: true);
        ref.read(tokenProvider.notifier).updateToken(r);
        ref.read(userProvider.notifier).patchFcmToken();
      },
    );
  }

  void resetDialogMessage() {
    state = state.copyWith(
      showDialog: false,
      dialogTitle: '',
      dialogContent: '',
    );
  }

  void kakaoLogin() async {
    final Either<String?, SignInModel?> result =
        await SnsLoginSdk.signInWithKakao();

    result.fold((errorCode) {
      _handleKakaoLoginError(errorCode);
    }, (r) {
      login(signInModel: r);
    });
  }

  void appleLogin() async {
    final Either<AuthorizationErrorCode?, SignInModel?> result =
        await SnsLoginSdk.signInWithApple();

    result.fold((errorCode) {
      _handleAppleLoginError(errorCode);
    }, (r) {
      login(signInModel: r);
    });
  }

  Future<void> login({required SignInModel? signInModel}) async {
    if (signInModel == null) {
      return _handleLoginError(LoginError.haveNotCredential);
    }

    var result = await ref.read(appLoadingProvider.notifier).performApiCall(
          () => ref
              .read(accountRepositoryProvider)
              .login(signInModel: signInModel),
        );

    result.fold((l) {
      if (l.response == null || l.response?.data == null) {
        debugPrint(l.toString());
        debugPrint(l.response.toString());

        return _handleLoginError(LoginError.unKnown);
      }

      final Map<String, dynamic> responseData = l.response?.data;
      final int code = responseData['result']['code'];

      debugPrint('Login Fail : $responseData');

      switch (code) {
        case 40000015:
          _startSignUp(signInModel);
          break;
        case 40000002:
          _handleLoginError(LoginError.needSocialInfo);
          break;
        case 40000003:
          _handleLoginError(
            LoginError.existAccount,
            socialType: responseData['result']['socialType'],
          );
          break;
        case 40100004:
          _handleLoginError(LoginError.deniedAccount);
          break;
        case 40100005:
          _handleLoginError(LoginError.withdrawAccount);
          break;

        default:
          _handleLoginError(LoginError.unKnown);
      }
    }, (r) async {
      debugPrint('Login Success : $r');

      ref.read(tokenProvider.notifier).updateToken(r);
      ref.read(userProvider.notifier).patchFcmToken();
    });
  }

  void _startSignUp(SignInModel signInModel) {
    ref
        .read(signUpProvider.notifier)
        .showTermBottomSheet(signInModel: signInModel);
  }

  void _handleLoginError(LoginError loginError, {String socialType = ''}) {
    String title = '';
    String content = '';

    switch (loginError) {
      case LoginError.haveNotCredential:
        title = '소셜 로그인 오류';
        content = '소셜 로그인 도중 오류가 발생했어요.\n다시 시도해주세요.';
        break;
      case LoginError.existAccount:
        title = '이미 가입된 계정이 있습니다.';
        content =
            '동일한 이메일 주소로 가입된\nSNS계정($socialType)이 있습니다.\n기존 계정으로 로그인해주세요.';
        break;
      case LoginError.needSocialInfo:
        title = '올바르지 않은 SNS 정보';
        content = 'SNS 정보가 올바르지 않습니다.\n해당 현상이 반복될 경우\n고객센터에 문의해주세요.';
        break;
      case LoginError.deniedAccount:
        title = '접근이 금지된 계정입니다.';
        content = '해당 계정은 앱 내에 접근이\n금지됐습니다.';
        break;
      case LoginError.withdrawAccount:
        title = '탈퇴한 계정입니다.';
        content = '탈퇴한 날짜로부터 1개월이 지나야\n동일한 계정으로 다시 가입할 수 있어요.';
        break;
      case LoginError.networkError:
        title = '네트워크 오류';
        content = '네트워크 오류가 발생했어요. 잠시 후에 다시 시도해주세요.';
        break;
      case LoginError.unKnown:
        title = '알 수 없는 오류';
        content = '알 수 없는 오류가 발생했어요. 잠시 후에 다시 시도해주세요.';
        break;
    }

    state = state.copyWith(
      showDialog: true,
      dialogTitle: title,
      dialogContent: content,
    );
  }

  void _handleAppleLoginError(AuthorizationErrorCode? errorCode) {
    switch (errorCode) {
      case AuthorizationErrorCode.canceled:
        break;
      case AuthorizationErrorCode.failed:
        _handleLoginError(LoginError.haveNotCredential);
        break;
      case AuthorizationErrorCode.invalidResponse:
        _handleLoginError(LoginError.haveNotCredential);
        break;
      case AuthorizationErrorCode.notHandled:
        _handleLoginError(LoginError.haveNotCredential);
        break;
      case AuthorizationErrorCode.notInteractive:
        _handleLoginError(LoginError.haveNotCredential);
        break;
      case AuthorizationErrorCode.unknown:
        _handleLoginError(LoginError.haveNotCredential);
        break;
      case null:
        _handleLoginError(LoginError.haveNotCredential);
    }
  }

  void _handleKakaoLoginError(String? errorCode) {
    if (errorCode == 'CANCELED') {
      return;
    }

    _handleLoginError(LoginError.haveNotCredential);
  }
}
