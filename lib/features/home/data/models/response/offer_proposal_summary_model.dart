import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/features/home/domain/enums/chat_closed_reason.dart';
import 'package:flutter_template/features/home/domain/enums/chat_room_status.dart';
import 'package:flutter_template/features/home/domain/enums/device_storage_type.dart';

part 'offer_proposal_summary_model.freezed.dart';
part 'offer_proposal_summary_model.g.dart';

@freezed
class OfferProposalSummaryModel with _$OfferProposalSummaryModel {
  const factory OfferProposalSummaryModel({
    @JsonKey(name: 'idx') required int idx,
    @JsonKey(name: 'branchIdx') required int branchIdx,
    @JsonKey(name: 'branchName') required String branchName,
    @JsonKey(name: 'branchReviewRating') required double branchReviewRating,
    @JsonKey(name: 'branchLocation') required String branchLocation,
    @JsonKey(name: 'branchBcode') required String branchBcode,
    @JsonKey(name: 'branchX') required double branchX,
    @JsonKey(name: 'branchY') required double branchY,
    @JsonKey(name: 'deviceModel') String? deviceModel,
    @JsonKey(name: 'colorCode') String? colorCode,
    @JsonKey(name: 'colorName') String? colorName,
    @JsonKey(name: 'deviceStorageType') String? deviceStorageType,
    @JsonKey(name: 'monthlyTotalInstallment')
    required int monthlyTotalInstallment,
    @JsonKey(name: 'additionalSupportAmount')
    required int additionalSupportAmount,
    @JsonKey(name: 'chatRoomStatus') required String chatRoomStatus,
    @JsonKey(name: 'chatClosedReason') String? chatClosedReason,
  }) = _OfferProposalSummaryModel;

  factory OfferProposalSummaryModel.fromJson(Map<String, Object?> json) =>
      _$OfferProposalSummaryModelFromJson(json);
}
