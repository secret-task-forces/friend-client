import 'package:flutter_template/features/login/presentation/providers/login_provider.dart';
import 'package:flutter_template/features/login/presentation/providers/login_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider =
    AutoDisposeNotifierProvider<LoginViewModel, LoginState>(() {
  return LoginViewModel();
});
