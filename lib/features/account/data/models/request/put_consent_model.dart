import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'put_consent_model.freezed.dart';
part 'put_consent_model.g.dart';

@freezed
class PutConsentModel with _$PutConsentModel {
  const factory PutConsentModel({
    @JsonKey(name: 'subscribedAds') bool? subscribedAds,
    @JsonKey(name: 'notifyProposal') bool? notifyProposal,
    @JsonKey(name: 'notifyChat') bool? notifyChat,
    @JsonKey(name: 'notifyReview') bool? notifyReview,
  }) = _PutConsentModel;

  factory PutConsentModel.fromJson(Map<String, Object?> json) =>
      _$PutConsentModelFromJson(json);
}
