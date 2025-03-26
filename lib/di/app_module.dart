import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/providers/app_info_provider.dart';
import 'package:flutter_template/core/providers/app_loading_provider.dart';
import 'package:flutter_template/core/providers/app_version_provider.dart';
import 'package:flutter_template/core/providers/auth_provider.dart';
import 'package:flutter_template/core/providers/token_provider.dart';
import 'package:flutter_template/core/providers/user_provider.dart';
import 'package:flutter_template/features/account/domain/entities/account.dart';
import 'package:flutter_template/features/account/domain/entities/token.dart';
import 'package:flutter_template/features/version_check/domain/entities/app_version.dart';

final appLoadingProvider = NotifierProvider<AppLoadingNotifier, bool>(
  AppLoadingNotifier.new,
);

final appVersionProvider =
    AsyncNotifierProvider<AppVersionNotifier, AppVersion>(
        AppVersionNotifier.new);

final authProvider =
    ChangeNotifierProvider<AuthProvider>((ref) => AuthProvider(ref: ref));

final tokenProvider = AsyncNotifierProvider<TokenStateNotifier, Token?>(() {
  return TokenStateNotifier();
});

final userProvider = AsyncNotifierProvider<UserStateNotifier, Account?>(() {
  return UserStateNotifier();
});

final appInfoProvider = NotifierProvider<AppInfoNotifier, String>(
  AppInfoNotifier.new,
);
