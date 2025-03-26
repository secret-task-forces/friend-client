// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInModelImpl _$$SignInModelImplFromJson(Map<String, dynamic> json) =>
    _$SignInModelImpl(
      socialType: json['socialType'] as String,
      socialKey: json['socialKey'] as String,
      subSocialKey: json['subSocialKey'] as String?,
    );

Map<String, dynamic> _$$SignInModelImplToJson(_$SignInModelImpl instance) =>
    <String, dynamic>{
      'socialType': instance.socialType,
      'socialKey': instance.socialKey,
      'subSocialKey': instance.subSocialKey,
    };
