import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_category.freezed.dart';

@freezed
class NoticeCategory with _$NoticeCategory {
  const factory NoticeCategory({
    required int idx,
    required String name,
  }) = _NoticeCategory;

  const NoticeCategory._();
}
