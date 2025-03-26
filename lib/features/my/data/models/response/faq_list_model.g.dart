// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaqListModelImpl _$$FaqListModelImplFromJson(Map<String, dynamic> json) =>
    _$FaqListModelImpl(
      totalPage: (json['totalPage'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => FaqModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FaqListModelImplToJson(_$FaqListModelImpl instance) =>
    <String, dynamic>{
      'totalPage': instance.totalPage,
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
      'size': instance.size,
      'data': instance.data,
    };
