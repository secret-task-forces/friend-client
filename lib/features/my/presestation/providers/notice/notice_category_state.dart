import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/features/my/domain/entities/notice_category.dart';

part 'notice_category_state.freezed.dart';

@freezed
class NoticeCategoryState with _$NoticeCategoryState {
  factory NoticeCategoryState({
    required List<NoticeCategory> categoryList,
    required NoticeCategory selectedCategory,
  }) = _NoticeCategoryState;
}
