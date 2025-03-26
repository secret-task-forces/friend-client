// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeModelImpl _$$NoticeModelImplFromJson(Map<String, dynamic> json) =>
    _$NoticeModelImpl(
      idx: (json['idx'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
      publishedAt: (json['publishedAt'] as num).toInt(),
    );

Map<String, dynamic> _$$NoticeModelImplToJson(_$NoticeModelImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'title': instance.title,
      'content': instance.content,
      'publishedAt': instance.publishedAt,
    };
