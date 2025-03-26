import 'package:shared_preferences/shared_preferences.dart';

class StorageSdk {
  static final StorageSdk _instance = StorageSdk._();

  factory StorageSdk() => _instance;

  StorageSdk._();

  Future<SharedPreferences> storage = SharedPreferences.getInstance();

  static Future<void> removeAll() async {
    await _instance.storage
        .then((sharedPreferences) => sharedPreferences.clear());
  }

  static Future<void> remove(String key) async {
    await _instance.storage
        .then((sharedPreferences) => sharedPreferences.remove(key));
  }

  static Future<void> put({required String key, required String value}) async {
    await _instance.storage
        .then((sharedPreferences) => sharedPreferences.setString(key, value));
  }

  static Future<String?> get(String key) async {
    if (await contains(key)) {
      final String? value = await _instance.storage
          .then((sharedPreferences) => sharedPreferences.getString(key));

      return value;
    }

    return null;
  }

  static Future<bool> contains(String key) async {
    final value = await _instance.storage
        .then((sharedPreferences) => sharedPreferences.getString(key));

    if (value == null || value.isEmpty) {
      return false;
    }
    return true;
  }
}
