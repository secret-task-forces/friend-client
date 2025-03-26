// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaqModelImpl _$$FaqModelImplFromJson(Map<String, dynamic> json) =>
    _$FaqModelImpl(
      idx: (json['idx'] as num).toInt(),
      question: json['question'] as String,
      answer: json['answer'] as String,
      publishedAt: (json['publishedAt'] as num).toInt(),
    );

Map<String, dynamic> _$$FaqModelImplToJson(_$FaqModelImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'question': instance.question,
      'answer': instance.answer,
      'publishedAt': instance.publishedAt,
    };
