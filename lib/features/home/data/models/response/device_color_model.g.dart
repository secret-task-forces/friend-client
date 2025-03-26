// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_color_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceColorModelImpl _$$DeviceColorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceColorModelImpl(
      idx: (json['idx'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      fullImg: json['fullImg'] as String,
      partialImg1: json['partialImg1'] as String,
    );

Map<String, dynamic> _$$DeviceColorModelImplToJson(
        _$DeviceColorModelImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'name': instance.name,
      'code': instance.code,
      'fullImg': instance.fullImg,
      'partialImg1': instance.partialImg1,
    };
