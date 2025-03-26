import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_category.freezed.dart';

@freezed
class FaqCategory with _$FaqCategory {
  const factory FaqCategory({
    required int idx,
    required String name,
  }) = _FaqCategory;

  const FaqCategory._();
}
