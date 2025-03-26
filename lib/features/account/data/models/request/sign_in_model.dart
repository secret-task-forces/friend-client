import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'sign_in_model.freezed.dart';
part 'sign_in_model.g.dart';

@freezed
class SignInModel with _$SignInModel {
  const factory SignInModel({
    @JsonKey(name: 'socialType') required String socialType,
    @JsonKey(name: 'socialKey') required String socialKey,
    @JsonKey(name: 'subSocialKey') String? subSocialKey,
  }) = _SignInModel;

  factory SignInModel.fromJson(Map<String, Object?> json) =>
      _$SignInModelFromJson(json);
}
