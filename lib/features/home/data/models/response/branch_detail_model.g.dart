// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchDetailModelImpl _$$BranchDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BranchDetailModelImpl(
      idx: (json['idx'] as num).toInt(),
      name: json['name'] as String,
      location: json['location'] as String,
      operatingHours: json['operatingHours'] as String,
      description: json['description'] as String?,
      reviewCount1: (json['reviewCount1'] as num).toInt(),
      reviewCount2: (json['reviewCount2'] as num).toInt(),
      reviewCount3: (json['reviewCount3'] as num).toInt(),
      reviewCount4: (json['reviewCount4'] as num).toInt(),
      reviewCount5: (json['reviewCount5'] as num).toInt(),
      totalReviewCount: (json['totalReviewCount'] as num).toInt(),
      averageRating: (json['averageRating'] as num).toDouble(),
    );

Map<String, dynamic> _$$BranchDetailModelImplToJson(
        _$BranchDetailModelImpl instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'name': instance.name,
      'location': instance.location,
      'operatingHours': instance.operatingHours,
      'description': instance.description,
      'reviewCount1': instance.reviewCount1,
      'reviewCount2': instance.reviewCount2,
      'reviewCount3': instance.reviewCount3,
      'reviewCount4': instance.reviewCount4,
      'reviewCount5': instance.reviewCount5,
      'totalReviewCount': instance.totalReviewCount,
      'averageRating': instance.averageRating,
    };
