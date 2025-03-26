// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_proposal_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferProposalSummaryModelImpl _$$OfferProposalSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OfferProposalSummaryModelImpl(
      idx: (json['idx'] as num).toInt(),
      branchIdx: (json['branchIdx'] as num).toInt(),
      branchName: json['branchName'] as String,
      branchReviewRating: (json['branchReviewRating'] as num).toDouble(),
      branchLocation: json['branchLocation'] as String,
      branchBcode: json['branchBcode'] as String,
      branchX: (json['branchX'] as num).toDouble(),
      branchY: (json['branchY'] as num).toDouble(),
      deviceModel: json['deviceModel'] as String?,
      colorCode: json['colorCode'] as String?,
      colorName: json['colorName'] as String?,
      deviceStorageType: json['deviceStorageType'] as String?,
      monthlyTotalInstallment: (json['monthlyTotalInstallment'] as num).toInt(),
      additionalSupportAmount: (json['additionalSupportAmount'] as num).toInt(),
      chatRoomStatus: json['chatRoomStatus'] as String,
      chatClosedReason: json['chatClosedReason'] as String?,
    );

Map<String, dynamic> _$$OfferProposalSummaryModelImplToJson(
        _$OfferProposalSummaryModelImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'branchIdx': instance.branchIdx,
      'branchName': instance.branchName,
      'branchReviewRating': instance.branchReviewRating,
      'branchLocation': instance.branchLocation,
      'branchBcode': instance.branchBcode,
      'branchX': instance.branchX,
      'branchY': instance.branchY,
      'deviceModel': instance.deviceModel,
      'colorCode': instance.colorCode,
      'colorName': instance.colorName,
      'deviceStorageType': instance.deviceStorageType,
      'monthlyTotalInstallment': instance.monthlyTotalInstallment,
      'additionalSupportAmount': instance.additionalSupportAmount,
      'chatRoomStatus': instance.chatRoomStatus,
      'chatClosedReason': instance.chatClosedReason,
    };
