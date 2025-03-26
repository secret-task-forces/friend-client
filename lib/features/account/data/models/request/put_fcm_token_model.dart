import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'put_fcm_token_model.freezed.dart';
part 'put_fcm_token_model.g.dart';

@freezed
class PutFcmTokenModel with _$PutFcmTokenModel {
  const factory PutFcmTokenModel({
    @JsonKey(name: 'fcmToken') required String fcmToken,
  }) = _PutFcmTokenModel;

  factory PutFcmTokenModel.fromJson(Map<String, Object?> json) =>
      _$PutFcmTokenModelFromJson(json);
}
