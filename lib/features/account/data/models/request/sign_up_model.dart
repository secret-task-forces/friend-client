import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'sign_up_model.freezed.dart';
part 'sign_up_model.g.dart';

@freezed
class SignUpModel with _$SignUpModel {
  const factory SignUpModel({
    @JsonKey(name: 'socialType') required String socialType,
    @JsonKey(name: 'socialKey') required String socialKey,
    @JsonKey(name: 'subSocialKey') String? subSocialKey,
    @JsonKey(name: 'subscribedAds') required bool subscribedAds,
  }) = _SignUpModel;

  factory SignUpModel.fromJson(Map<String, Object?> json) =>
      _$SignUpModelFromJson(json);
}
