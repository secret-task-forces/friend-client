import 'package:flutter_template/features/version_check/data/models/response/app_version_model.dart';

abstract class AppVersionDataSource {
  Future<AppVersionModel> getAppVersion();
}
