import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'patch_consent_model.freezed.dart';
part 'patch_consent_model.g.dart';

@freezed
class PatchConsentModel with _$PatchConsentModel {
  const factory PatchConsentModel({
    @JsonKey(name: 'consentType') required String consentType,
  }) = _PatchConsentModel;

  factory PatchConsentModel.fromJson(Map<String, Object?> json) =>
      _$PatchConsentModelFromJson(json);
}
