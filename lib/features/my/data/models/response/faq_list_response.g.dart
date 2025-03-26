// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaqListResponseImpl _$$FaqListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FaqListResponseImpl(
      totalPage: (json['totalPage'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Faq.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FaqListResponseImplToJson(
        _$FaqListResponseImpl instance) =>
    <String, dynamic>{
      'totalPage': instance.totalPage,
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
      'size': instance.size,
      'data': instance.data,
    };

_$FaqImpl _$$FaqImplFromJson(Map<String, dynamic> json) => _$FaqImpl(
      idx: (json['idx'] as num).toInt(),
      question: json['question'] as String,
      answer: json['answer'] as String,
      publishedAt: (json['publishedAt'] as num).toInt(),
    );

Map<String, dynamic> _$$FaqImplToJson(_$FaqImpl instance) => <String, dynamic>{
      'idx': instance.idx,
      'question': instance.question,
      'answer': instance.answer,
      'publishedAt': instance.publishedAt,
    };
