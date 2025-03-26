import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'app_version_model.freezed.dart';
part 'app_version_model.g.dart';

@freezed
class AppVersionModel with _$AppVersionModel {
  const factory AppVersionModel({
    @JsonKey(name: 'version') required String version,
    @JsonKey(name: 'minVersion') required String minVersion,
    @JsonKey(name: 'description') required String description,
  }) = _AppVersionModel;

  factory AppVersionModel.fromJson(Map<String, Object?> json) =>
      _$AppVersionModelFromJson(json);
}
