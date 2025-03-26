import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/features/my/domain/entities/notice.dart';

part 'notice_list.freezed.dart';

@freezed
class NoticeList with _$NoticeList {
  const factory NoticeList({
    required int totalPage,
    required int totalCount,
    required int currentPage,
    required int size,
    required List<Notice> data,
  }) = _NoticeList;
}
