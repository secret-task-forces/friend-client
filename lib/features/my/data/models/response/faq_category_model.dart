import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'faq_category_model.freezed.dart';
part 'faq_category_model.g.dart';

@freezed
class FaqCategoryModel with _$FaqCategoryModel {
  const factory FaqCategoryModel({
    @JsonKey(name: 'idx') required int idx,
    @JsonKey(name: 'name') required String name,
  }) = _FaqCategoryModel;

  factory FaqCategoryModel.fromJson(Map<String, Object?> json) =>
      _$FaqCategoryModelFromJson(json);
}
