// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_consent_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PutConsentResultModelImpl _$$PutConsentResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PutConsentResultModelImpl(
      idx: (json['idx'] as num?)?.toInt(),
      subscribedAds: json['subscribedAds'] as bool?,
      notifyProposal: json['notifyProposal'] as bool?,
      notifyChat: json['notifyChat'] as bool?,
      notifyReview: json['notifyReview'] as bool?,
    );

Map<String, dynamic> _$$PutConsentResultModelImplToJson(
        _$PutConsentResultModelImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'subscribedAds': instance.subscribedAds,
      'notifyProposal': instance.notifyProposal,
      'notifyChat': instance.notifyChat,
      'notifyReview': instance.notifyReview,
    };
