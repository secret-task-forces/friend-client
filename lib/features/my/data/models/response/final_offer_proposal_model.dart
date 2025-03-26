import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'final_offer_proposal_model.freezed.dart';
part 'final_offer_proposal_model.g.dart';

@freezed
class FinalOfferProposalModel with _$FinalOfferProposalModel {
  const factory FinalOfferProposalModel({
    @JsonKey(name: 'idx') required int idx,
    @JsonKey(name: 'deviceModel') required String deviceModel,
    @JsonKey(name: 'deviceColorName') required String deviceColorName,
    @JsonKey(name: 'deviceColorCode') String? deviceColorCode,
    @JsonKey(name: 'deviceFullImg') String? deviceFullImg,
    @JsonKey(name: 'deviceStorage') required String deviceStorage,
    @JsonKey(name: 'branchName') required String branchName,
    @JsonKey(name: 'branchLocation') String? branchLocation,
  }) = _FinalOfferProposalModel;

  factory FinalOfferProposalModel.fromJson(Map<String, Object?> json) =>
      _$FinalOfferProposalModelFromJson(json);
}
