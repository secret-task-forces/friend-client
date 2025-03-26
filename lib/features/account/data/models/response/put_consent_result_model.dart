import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'put_consent_result_model.freezed.dart';
part 'put_consent_result_model.g.dart';

@freezed
class PutConsentResultModel with _$PutConsentResultModel {
  const factory PutConsentResultModel({
    @JsonKey(name: 'idx') int? idx,
    @JsonKey(name: 'subscribedAds') bool? subscribedAds,
    @JsonKey(name: 'notifyProposal') bool? notifyProposal,
    @JsonKey(name: 'notifyChat') bool? notifyChat,
    @JsonKey(name: 'notifyReview') bool? notifyReview,
  }) = _PutConsentResultModel;

  factory PutConsentResultModel.fromJson(Map<String, Object?> json) =>
      _$PutConsentResultModelFromJson(json);
}
