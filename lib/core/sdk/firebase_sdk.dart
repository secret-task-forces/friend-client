import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseSdk {
  FirebaseSdk._();

  static Future<String> instanceToken() async {
    try {
      return await FirebaseMessaging.instance.getToken() ?? '';
    } catch (error) {
      log('FirebaseSdk.instanceToken error: $error');
      return '';
    }
  }
}
