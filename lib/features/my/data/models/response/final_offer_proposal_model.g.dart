// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'final_offer_proposal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinalOfferProposalModelImpl _$$FinalOfferProposalModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FinalOfferProposalModelImpl(
      idx: (json['idx'] as num).toInt(),
      deviceModel: json['deviceModel'] as String,
      deviceColorName: json['deviceColorName'] as String,
      deviceColorCode: json['deviceColorCode'] as String?,
      deviceFullImg: json['deviceFullImg'] as String?,
      deviceStorage: json['deviceStorage'] as String,
      branchName: json['branchName'] as String,
      branchLocation: json['branchLocation'] as String?,
    );

Map<String, dynamic> _$$FinalOfferProposalModelImplToJson(
        _$FinalOfferProposalModelImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'deviceModel': instance.deviceModel,
      'deviceColorName': instance.deviceColorName,
      'deviceColorCode': instance.deviceColorCode,
      'deviceFullImg': instance.deviceFullImg,
      'deviceStorage': instance.deviceStorage,
      'branchName': instance.branchName,
      'branchLocation': instance.branchLocation,
    };
