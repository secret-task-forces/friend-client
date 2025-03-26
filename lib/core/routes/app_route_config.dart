import 'package:flutter_template/di/app_module.dart';
import 'package:flutter_template/features/force_update/presentation/pages/force_update_page.dart';
import 'package:flutter_template/features/my/presestation/pages/account/account_page.dart';
import 'package:flutter_template/features/my/presestation/pages/account/withdraw/withdraw_page.dart';
import 'package:flutter_template/features/my/presestation/pages/my_page.dart';
import 'package:flutter_template/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/core/routes/app_route.dart';
import 'package:flutter_template/bottom_navigation_scaffold.dart';

import 'package:flutter_template/features/home/presentation/pages/home_page.dart';
import 'package:flutter_template/features/login/presentation/pages/login_page.dart';

final String initialLocation = AppRoute.HomePage.absolutePath;

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _bottomNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'bottomNavigation');

final routerProvider = Provider<GoRouter>(
  (ref) {
    final auth = ref.read(authProvider);

    return GoRouter(
      initialLocation: initialLocation,
      debugLogDiagnostics: true,
      navigatorKey: _rootNavigatorKey,
      redirect: (context, state) => auth.redirect(state),
      refreshListenable: auth,
      errorBuilder: (context, state) => const Text(
        'Error',
      ),
      routes: [
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: AppRoute.SplashPage.path,
          name: AppRoute.SplashPage.name,
          builder: (context, state) => const SplashPage(),
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: AppRoute.ForceUpdatePage.path,
          name: AppRoute.ForceUpdatePage.name,
          builder: (context, state) => const ForceUpdatePage(),
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: AppRoute.LoginPage.path,
          name: AppRoute.LoginPage.name,
          builder: (context, state) => const LoginPage(),
        ),
        ShellRoute(
          navigatorKey: _bottomNavigatorKey,
          pageBuilder: (context, state, child) => NoTransitionPage(
            child: BottomNavigationScaffold(child: child),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: _bottomNavigatorKey,
              path: AppRoute.HomePage.path,
              name: AppRoute.HomePage.name,
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: HomePage(),
                );
              },
            ),
            GoRoute(
              parentNavigatorKey: _bottomNavigatorKey,
              path: AppRoute.MyPage.path,
              name: AppRoute.MyPage.name,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: MyPage(),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: AppRoute.AccountPage.path,
                  name: AppRoute.AccountPage.name,
                  builder: (context, state) => const AccountPage(),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: _rootNavigatorKey,
                      path: AppRoute.WithdrawPage.path,
                      name: AppRoute.WithdrawPage.name,
                      builder: (context, state) => const WithdrawPage(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  },
);
