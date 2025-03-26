import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'branch_detail_model.freezed.dart';
part 'branch_detail_model.g.dart';

@freezed
class BranchDetailModel with _$BranchDetailModel {
  const factory BranchDetailModel({
    @JsonKey(name: 'idx') required int idx,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'location') required String location,
    @JsonKey(name: 'operatingHours') required String operatingHours,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'reviewCount1') required int reviewCount1,
    @JsonKey(name: 'reviewCount2') required int reviewCount2,
    @JsonKey(name: 'reviewCount3') required int reviewCount3,
    @JsonKey(name: 'reviewCount4') required int reviewCount4,
    @JsonKey(name: 'reviewCount5') required int reviewCount5,
    @JsonKey(name: 'totalReviewCount') required int totalReviewCount,
    @JsonKey(name: 'averageRating') required double averageRating,
  }) = _BranchDetailModel;

  factory BranchDetailModel.fromJson(Map<String, Object?> json) =>
      _$BranchDetailModelFromJson(json);
}
