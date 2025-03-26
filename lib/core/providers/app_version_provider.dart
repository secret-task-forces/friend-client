import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/features/version_check/di/version_check_module.dart';
import 'package:flutter_template/features/version_check/domain/entities/app_version.dart';

class AppVersionNotifier extends AsyncNotifier<AppVersion> {
  @override
  Future<AppVersion> build() async {
    return _fetchAppVersion();
  }

  Future<AppVersion> _fetchAppVersion() async {
    final response =
        await ref.read(appVersionRepositoryProvider).getAppVersion();

    return response.fold(
      (l) => AppVersion(
        version: '',
        minVersion: '',
        description: '',
      ),
      (r) => r,
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchAppVersion());
  }
}
