// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpModelImpl _$$SignUpModelImplFromJson(Map<String, dynamic> json) =>
    _$SignUpModelImpl(
      socialType: json['socialType'] as String,
      socialKey: json['socialKey'] as String,
      subSocialKey: json['subSocialKey'] as String?,
      subscribedAds: json['subscribedAds'] as bool,
    );

Map<String, dynamic> _$$SignUpModelImplToJson(_$SignUpModelImpl instance) =>
    <String, dynamic>{
      'socialType': instance.socialType,
      'socialKey': instance.socialKey,
      'subSocialKey': instance.subSocialKey,
      'subscribedAds': instance.subscribedAds,
    };
