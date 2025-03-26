import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/features/account/data/models/request/sign_in_model.dart';

part 'sign_up_state.freezed.dart';
part 'sign_up_state.g.dart';

@freezed
class SignUpState with _$SignUpState {
  const SignUpState._();

  const factory SignUpState({
    required bool showTermBottomSheet,
    required bool ageCheck,
    required bool useTermCheck,
    required bool privacyCheck,
    required bool marketingCheck,
    required bool showDialog,
    required String dialogTitle,
    required String dialogContent,
    SignInModel? signInModel,
  }) = _SignUpState;

  factory SignUpState.init() => const SignUpState(
        showTermBottomSheet: false,
        ageCheck: false,
        useTermCheck: false,
        privacyCheck: false,
        marketingCheck: false,
        showDialog: false,
        dialogTitle: '',
        dialogContent: '',
      );

  factory SignUpState.fromJson(Map<String, Object?> json) =>
      _$SignUpStateFromJson(json);

  bool get requiredTermCheck => useTermCheck && privacyCheck && ageCheck;

  bool get allTermCheck =>
      useTermCheck && privacyCheck && ageCheck && marketingCheck;
}
