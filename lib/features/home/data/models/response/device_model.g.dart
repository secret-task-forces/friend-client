// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceModelImpl _$$DeviceModelImplFromJson(Map<String, dynamic> json) =>
    _$DeviceModelImpl(
      idx: (json['idx'] as num).toInt(),
      model: json['model'] as String,
      deviceType: json['deviceType'] as String,
      deviceStorageTypes: (json['deviceStorageTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DeviceModelImplToJson(_$DeviceModelImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'model': instance.model,
      'deviceType': instance.deviceType,
      'deviceStorageTypes': instance.deviceStorageTypes,
    };
