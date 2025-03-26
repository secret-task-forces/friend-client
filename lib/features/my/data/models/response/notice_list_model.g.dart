// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeListModelImpl _$$NoticeListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeListModelImpl(
      totalPage: (json['totalPage'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => NoticeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NoticeListModelImplToJson(
        _$NoticeListModelImpl instance) =>
    <String, dynamic>{
      'totalPage': instance.totalPage,
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
      'size': instance.size,
      'data': instance.data,
    };
