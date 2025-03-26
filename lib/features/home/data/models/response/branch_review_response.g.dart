// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_review_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchReviewResponseImpl _$$BranchReviewResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BranchReviewResponseImpl(
      totalPage: (json['totalPage'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => BranchReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BranchReviewResponseImplToJson(
        _$BranchReviewResponseImpl instance) =>
    <String, dynamic>{
      'totalPage': instance.totalPage,
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
      'size': instance.size,
      'data': instance.data,
    };

_$BranchReviewModelImpl _$$BranchReviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BranchReviewModelImpl(
      idx: (json['idx'] as num).toInt(),
      userIdx: (json['userIdx'] as num).toInt(),
      userName: json['userName'] as String,
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String,
      createdAt: (json['createdAt'] as num).toInt(),
    );

Map<String, dynamic> _$$BranchReviewModelImplToJson(
        _$BranchReviewModelImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'userIdx': instance.userIdx,
      'userName': instance.userName,
      'rating': instance.rating,
      'comment': instance.comment,
      'createdAt': instance.createdAt,
    };
