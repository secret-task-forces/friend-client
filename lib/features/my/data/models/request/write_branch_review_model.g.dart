// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_branch_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteBranchReviewModelImpl _$$WriteBranchReviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteBranchReviewModelImpl(
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$WriteBranchReviewModelImplToJson(
        _$WriteBranchReviewModelImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'comment': instance.comment,
    };
