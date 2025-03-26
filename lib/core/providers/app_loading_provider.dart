import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppLoadingNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  void toggleLoading() {
    state = !state;
  }

  void setLoading(bool isLoading) {
    state = isLoading;
  }

  Future<T> performApiCall<T>(Future<T> Function() apiCall,
      {Duration? delay}) async {
    setLoading(true);
    try {
      if (delay != null) {
        await Future.delayed(delay);
      }
      final result = await apiCall();
      return result;
    } finally {
      setLoading(false);
    }
  }
}
