// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuoteRequestModelImpl _$$QuoteRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuoteRequestModelImpl(
      idx: (json['idx'] as num).toInt(),
      exprAt: (json['exprAt'] as num).toInt(),
      devicePartialImg1: json['devicePartialImg1'] as String?,
      deviceFullImg: json['deviceFullImg'] as String?,
      offerCount: (json['offerCount'] as num).toInt(),
      dtype: json['dtype'] as String,
    );

Map<String, dynamic> _$$QuoteRequestModelImplToJson(
        _$QuoteRequestModelImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'exprAt': instance.exprAt,
      'devicePartialImg1': instance.devicePartialImg1,
      'deviceFullImg': instance.deviceFullImg,
      'offerCount': instance.offerCount,
      'dtype': instance.dtype,
    };
