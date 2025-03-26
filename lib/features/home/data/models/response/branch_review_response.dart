import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'branch_review_response.freezed.dart';
part 'branch_review_response.g.dart';

@freezed
class BranchReviewResponse with _$BranchReviewResponse {
  const factory BranchReviewResponse({
    @JsonKey(name: 'totalPage') required int totalPage,
    @JsonKey(name: 'totalCount') required int totalCount,
    @JsonKey(name: 'currentPage') required int currentPage,
    @JsonKey(name: 'size') required int size,
    @JsonKey(name: 'data') required List<BranchReviewModel> data,
  }) = _BranchReviewResponse;

  factory BranchReviewResponse.fromJson(Map<String, Object?> json) =>
      _$BranchReviewResponseFromJson(json);
}

@freezed
class BranchReviewModel with _$BranchReviewModel {
  const factory BranchReviewModel({
    @JsonKey(name: 'idx') required int idx,
    @JsonKey(name: 'userIdx') required int userIdx,
    @JsonKey(name: 'userName') required String userName,
    @JsonKey(name: 'rating') required int rating,
    @JsonKey(name: 'comment') required String comment,
    @JsonKey(name: 'createdAt') required int createdAt,
  }) = _BranchReviewModel;

  factory BranchReviewModel.fromJson(Map<String, Object?> json) =>
      _$BranchReviewModelFromJson(json);
}
