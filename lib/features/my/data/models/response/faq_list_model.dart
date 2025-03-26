import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/features/my/data/models/response/faq_model.dart';
part 'faq_list_model.freezed.dart';
part 'faq_list_model.g.dart';

@freezed
class FaqListModel with _$FaqListModel {
  const factory FaqListModel({
    @JsonKey(name: 'totalPage') required int totalPage,
    @JsonKey(name: 'totalCount') required int totalCount,
    @JsonKey(name: 'currentPage') required int currentPage,
    @JsonKey(name: 'size') required int size,
    @JsonKey(name: 'data') required List<FaqModel> data,
  }) = _FaqListModel;

  factory FaqListModel.fromJson(Map<String, Object?> json) =>
      _$FaqListModelFromJson(json);
}
