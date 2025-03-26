import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/core/routes/app_route.dart';

final List<String> inspectRoutes = [];

class AuthProvider extends ChangeNotifier {
  final Ref ref;

  AuthProvider({required this.ref}) {
    ref.listen(tokenProvider, (previous, next) {
      if (previous != next) {
        notifyListeners();
      }
    });
  }

  Future<String?> redirect(GoRouterState state) async {
    final currentUri = state.uri.toString();

    if (inspectRoutes.contains(currentUri)) {
      final isValidToken =
          await ref.read(tokenProvider.notifier).isValidToken();

      if (!isValidToken) {
        return AppRoute.LoginPage.absolutePath;
      }
    }

    return null;
  }
}
