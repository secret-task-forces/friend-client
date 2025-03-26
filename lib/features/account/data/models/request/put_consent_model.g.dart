// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_consent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PutConsentModelImpl _$$PutConsentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PutConsentModelImpl(
      subscribedAds: json['subscribedAds'] as bool?,
      notifyProposal: json['notifyProposal'] as bool?,
      notifyChat: json['notifyChat'] as bool?,
      notifyReview: json['notifyReview'] as bool?,
    );

Map<String, dynamic> _$$PutConsentModelImplToJson(
        _$PutConsentModelImpl instance) =>
    <String, dynamic>{
      'subscribedAds': instance.subscribedAds,
      'notifyProposal': instance.notifyProposal,
      'notifyChat': instance.notifyChat,
      'notifyReview': instance.notifyReview,
    };
