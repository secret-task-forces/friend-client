import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'faq_model.freezed.dart';
part 'faq_model.g.dart';

@freezed
class FaqModel with _$FaqModel {
  const factory FaqModel({
    @JsonKey(name: 'idx') required int idx,
    @JsonKey(name: 'question') required String question,
    @JsonKey(name: 'answer') required String answer,
    @JsonKey(name: 'publishedAt') required int publishedAt,
  }) = _FaqModel;

  factory FaqModel.fromJson(Map<String, Object?> json) =>
      _$FaqModelFromJson(json);
}
