// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_proposal_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferProposalDetailModelImpl _$$OfferProposalDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OfferProposalDetailModelImpl(
      idx: (json['idx'] as num).toInt(),
      branchIdx: (json['branchIdx'] as num).toInt(),
      branchName: json['branchName'] as String,
      monthlyTotalInstallment: (json['monthlyTotalInstallment'] as num).toInt(),
      additionalSupportAmount: (json['additionalSupportAmount'] as num).toInt(),
      deviceModel: json['deviceModel'] as String?,
      deviceFullImg: json['deviceFullImg'] as String?,
      colorCode: json['colorCode'] as String?,
      colorName: json['colorName'] as String?,
      deviceStorageType: json['deviceStorageType'] as String?,
      monthlyPlanFee: (json['monthlyPlanFee'] as num).toInt(),
      planName: json['planName'] as String,
      dataLimit: json['dataLimit'] as String,
      callLimit: json['callLimit'] as String,
      smsLimit: json['smsLimit'] as String,
      telecom: json['telecom'] as String,
      extraInfo: json['extraInfo'] as String?,
      additionalBenefits: (json['additionalBenefits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      planDescription: json['planDescription'] as String?,
      chatRoomStatus: json['chatRoomStatus'] as String,
      chatClosedReason: json['chatClosedReason'] as String?,
      chatRoomId: json['chatRoomId'] as String?,
    );

Map<String, dynamic> _$$OfferProposalDetailModelImplToJson(
        _$OfferProposalDetailModelImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'branchIdx': instance.branchIdx,
      'branchName': instance.branchName,
      'monthlyTotalInstallment': instance.monthlyTotalInstallment,
      'additionalSupportAmount': instance.additionalSupportAmount,
      'deviceModel': instance.deviceModel,
      'deviceFullImg': instance.deviceFullImg,
      'colorCode': instance.colorCode,
      'colorName': instance.colorName,
      'deviceStorageType': instance.deviceStorageType,
      'monthlyPlanFee': instance.monthlyPlanFee,
      'planName': instance.planName,
      'dataLimit': instance.dataLimit,
      'callLimit': instance.callLimit,
      'smsLimit': instance.smsLimit,
      'telecom': instance.telecom,
      'extraInfo': instance.extraInfo,
      'additionalBenefits': instance.additionalBenefits,
      'planDescription': instance.planDescription,
      'chatRoomStatus': instance.chatRoomStatus,
      'chatClosedReason': instance.chatClosedReason,
      'chatRoomId': instance.chatRoomId,
    };
