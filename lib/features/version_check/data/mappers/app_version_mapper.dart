import 'package:flutter_template/features/version_check/data/models/response/app_version_model.dart';
import 'package:flutter_template/features/version_check/domain/entities/app_version.dart';

extension AppVersionMapper on AppVersionModel {
  AppVersion toEntity() {
    return AppVersion(
      version: version,
      minVersion: minVersion,
      description: description,
    );
  }
}
