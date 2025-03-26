import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'refresh_token_model.freezed.dart';
part 'refresh_token_model.g.dart';

@freezed
class RefreshTokenModel with _$RefreshTokenModel {
  const factory RefreshTokenModel({
    @JsonKey(name: 'refreshToken') required String refreshToken,
  }) = _RefreshTokenModel;

  factory RefreshTokenModel.fromJson(Map<String, Object?> json) =>
      _$RefreshTokenModelFromJson(json);
}
