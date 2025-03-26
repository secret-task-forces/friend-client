import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';
part 'login_state.g.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState({
    required bool showOtherButton,
    required bool showDialog,
    required String dialogTitle,
    required String dialogContent,
    required bool isTestLogin,
  }) = _LoginState;

  factory LoginState.init() => const LoginState(
        showOtherButton: false,
        showDialog: false,
        dialogTitle: '',
        dialogContent: '',
        isTestLogin: false,
      );

  factory LoginState.fromJson(Map<String, Object?> json) =>
      _$LoginStateFromJson(json);
}
