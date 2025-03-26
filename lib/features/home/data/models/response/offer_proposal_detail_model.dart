import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/features/home/domain/enums/chat_closed_reason.dart';
import 'package:flutter_template/features/home/domain/enums/chat_room_status.dart';
import 'package:flutter_template/features/home/domain/enums/device_storage_type.dart';
part 'offer_proposal_detail_model.freezed.dart';
part 'offer_proposal_detail_model.g.dart';

@freezed
class OfferProposalDetailModel with _$OfferProposalDetailModel {
  const factory OfferProposalDetailModel({
    @JsonKey(name: 'idx') required int idx,
    @JsonKey(name: 'branchIdx') required int branchIdx,
    @JsonKey(name: 'branchName') required String branchName,
    @JsonKey(name: 'monthlyTotalInstallment')
    required int monthlyTotalInstallment,
    @JsonKey(name: 'additionalSupportAmount')
    required int additionalSupportAmount,
    @JsonKey(name: 'deviceModel') String? deviceModel,
    @JsonKey(name: 'deviceFullImg') String? deviceFullImg,
    @JsonKey(name: 'colorCode') String? colorCode,
    @JsonKey(name: 'colorName') String? colorName,
    @JsonKey(name: 'deviceStorageType') String? deviceStorageType,
    @JsonKey(name: 'monthlyPlanFee') required int monthlyPlanFee,
    @JsonKey(name: 'planName') required String planName,
    @JsonKey(name: 'dataLimit') required String dataLimit,
    @JsonKey(name: 'callLimit') required String callLimit,
    @JsonKey(name: 'smsLimit') required String smsLimit,
    @JsonKey(name: 'telecom') required String telecom,
    @JsonKey(name: 'extraInfo') String? extraInfo,
    @JsonKey(name: 'additionalBenefits') List<String>? additionalBenefits,
    @JsonKey(name: 'planDescription') String? planDescription,
    @JsonKey(name: 'chatRoomStatus') required String chatRoomStatus,
    @JsonKey(name: 'chatClosedReason') String? chatClosedReason,
    @JsonKey(name: 'chatRoomId') String? chatRoomId,
  }) = _OfferProposalDetailModel;

  factory OfferProposalDetailModel.fromJson(Map<String, Object?> json) =>
      _$OfferProposalDetailModelFromJson(json);
}
