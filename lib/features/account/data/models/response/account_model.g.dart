// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountModelImpl _$$AccountModelImplFromJson(Map<String, dynamic> json) =>
    _$AccountModelImpl(
      loggedIn: json['loggedIn'] as bool,
      idx: (json['idx'] as num?)?.toInt(),
      email: json['email'] as String?,
      socialType: json['socialType'] as String?,
      name: json['name'] as String?,
      subscribedAds: json['subscribedAds'] as bool,
      notifyProposal: json['notifyProposal'] as bool,
      notifyChat: json['notifyChat'] as bool,
      notifyReview: json['notifyReview'] as bool,
    );

Map<String, dynamic> _$$AccountModelImplToJson(_$AccountModelImpl instance) =>
    <String, dynamic>{
      'loggedIn': instance.loggedIn,
      'idx': instance.idx,
      'email': instance.email,
      'socialType': instance.socialType,
      'name': instance.name,
      'subscribedAds': instance.subscribedAds,
      'notifyProposal': instance.notifyProposal,
      'notifyChat': instance.notifyChat,
      'notifyReview': instance.notifyReview,
    };
