import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'notice_category_model.freezed.dart';
part 'notice_category_model.g.dart';

@freezed
class NoticeCategoryModel with _$NoticeCategoryModel {
  const factory NoticeCategoryModel({
    @JsonKey(name: 'idx') required int idx,
    @JsonKey(name: 'name') required String name,
  }) = _NoticeCategoryModel;

  factory NoticeCategoryModel.fromJson(Map<String, Object?> json) =>
      _$NoticeCategoryModelFromJson(json);
}
