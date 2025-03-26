import 'package:flutter_template/features/login/presentation/providers/sign_up_provider.dart';
import 'package:flutter_template/features/login/presentation/providers/sign_up_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signUpProvider =
    AutoDisposeNotifierProvider<SignUpViewModel, SignUpState>(() {
  return SignUpViewModel();
});
