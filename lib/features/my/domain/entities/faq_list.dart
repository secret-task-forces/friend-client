import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/features/my/domain/entities/faq.dart';

part 'faq_list.freezed.dart';

@freezed
class FaqList with _$FaqList {
  const factory FaqList({
    required int totalPage,
    required int totalCount,
    required int currentPage,
    required int size,
    required List<Faq> data,
  }) = _FaqList;

  const FaqList._();
}
