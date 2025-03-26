// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppVersionModelImpl _$$AppVersionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppVersionModelImpl(
      version: json['version'] as String,
      minVersion: json['minVersion'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$AppVersionModelImplToJson(
        _$AppVersionModelImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'minVersion': instance.minVersion,
      'description': instance.description,
    };
