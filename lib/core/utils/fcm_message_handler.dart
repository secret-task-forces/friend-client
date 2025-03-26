import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/core/utils/global_toast_manager.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FcmMessageHandler {
  static StreamSubscription? _messageSubscription;
  static StreamSubscription? _messageOpenedAppSubscription;

  // ignore: unused_element
  static void _safeNavigate(BuildContext context, String pageName,
      {Map<String, String>? pathParameters}) {
    if (!context.mounted) return;

    try {
      final router = GoRouter.of(context);
      final currentLocation =
          router.routerDelegate.currentConfiguration.uri.toString();

      if (currentLocation == pageName) {
        debugPrint('Already on page: $pageName');
        return;
      }

      context.goNamed(
        pageName,
        pathParameters: pathParameters ?? {},
      );
    } catch (e) {
      debugPrint('Navigation error: $e');
    }
  }

  static void handleFcmMessage(
    BuildContext context,
    Map<String, dynamic> data, {
    bool isRemoveToast = false,
  }) {
    if (isRemoveToast) {
      GlobalToastManager.removeToast();
    }

    debugPrint('data: $data');
  }

  static void handleForegroundMessage(
      BuildContext context, WidgetRef ref, RemoteMessage message) {
    debugPrint('시작: handleForegroundMessage');
  }

  static Future<void> initFirebaseMessaging(
    BuildContext context,
    WidgetRef ref,
  ) async {
    await dispose();

    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null &&
        initialMessage.data.isNotEmpty &&
        context.mounted) {
      handleFcmMessage(context, initialMessage.data);
    }

    _messageOpenedAppSubscription =
        FirebaseMessaging.onMessageOpenedApp.listen((message) {
      debugPrint('onMessageOpenedApp: ${message.data}');

      if (message.data.isNotEmpty && context.mounted) {
        handleFcmMessage(context, message.data);
      }
    });

    _messageSubscription = FirebaseMessaging.onMessage.listen((message) {
      debugPrint('onMessage: ${message.data}');

      if (context.mounted) {
        handleForegroundMessage(context, ref, message);
      }
    });

    debugPrint('Firebase messaging initialized');
  }

  static Future<void> dispose() async {
    await _messageSubscription?.cancel();
    await _messageOpenedAppSubscription?.cancel();
    _messageSubscription = null;
    _messageOpenedAppSubscription = null;
  }
}
