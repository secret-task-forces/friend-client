import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:flutter_template/features/account/data/models/request/sign_in_model.dart';
import 'package:flutter_template/features/account/data/models/request/sign_up_model.dart';
import 'package:flutter_template/features/account/di/account_module.dart';
import 'package:flutter_template/features/account/domain/repositories/account_repository.dart';

import 'sign_up_state.dart';

class SignUpViewModel extends AutoDisposeNotifier<SignUpState> {
  AccountRepository get _accountRepository =>
      ref.watch(accountRepositoryProvider);

  @override
  SignUpState build() {
    return SignUpState.init();
  }

  void allCheck() {
    if (state.allTermCheck) {
      state = state.copyWith(
        useTermCheck: false,
        privacyCheck: false,
        ageCheck: false,
        marketingCheck: false,
      );
    } else {
      state = state.copyWith(
        useTermCheck: true,
        privacyCheck: true,
        ageCheck: true,
        marketingCheck: true,
      );
    }
  }

  void useTermCheck() {
    state = state.copyWith(useTermCheck: !state.useTermCheck);
  }

  void privacyCheck() {
    state = state.copyWith(privacyCheck: !state.privacyCheck);
  }

  void ageCheck() {
    state = state.copyWith(ageCheck: !state.ageCheck);
  }

  void marketingCheck() {
    state = state.copyWith(marketingCheck: !state.marketingCheck);
  }

  void showTermBottomSheet({required SignInModel signInModel}) {
    state = state.copyWith(showTermBottomSheet: true, signInModel: signInModel);
  }

  void closeTermBottomSheet() {
    state = state.copyWith(
      showTermBottomSheet: false,
      useTermCheck: false,
      privacyCheck: false,
      ageCheck: false,
      marketingCheck: false,
    );
  }

  void resetDialogMessage() {
    state = state.copyWith(
      showDialog: false,
      dialogTitle: '',
      dialogContent: '',
    );
  }

  Future<bool> signup() async {
    final result = await ref.read(appLoadingProvider.notifier).performApiCall(
          () => _accountRepository.signup(
            signUpModel: SignUpModel(
              socialKey: state.signInModel?.socialKey ?? '',
              subSocialKey: state.signInModel?.subSocialKey,
              socialType: state.signInModel?.socialType ?? '',
              subscribedAds: state.marketingCheck,
            ),
          ),
        );

    return result.fold((l) {
      throw l;
    }, (r) {
      ref.read(tokenProvider.notifier).updateToken(r);
      return state.marketingCheck;
    });
  }
}
