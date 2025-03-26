import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'app_version.freezed.dart';

@freezed
class AppVersion with _$AppVersion {
  const factory AppVersion({
    required String version,
    required String minVersion,
    required String description,
  }) = _AppVersion;
}
