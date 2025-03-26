import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppInfoNotifier extends Notifier<String> {
  @override
  String build() {
    return '';
  }

  void updateAppInfo(String newInfo) {
    state = newInfo;
  }
}
