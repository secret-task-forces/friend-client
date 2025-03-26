import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/features/my/domain/entities/notice.dart';
import 'package:flutter_template/features/my/domain/entities/notice_list.dart';
import 'package:flutter_template/features/my/domain/enums/notice_filter.dart';

part 'notice_state.freezed.dart';

@freezed
class NoticeState with _$NoticeState {
  factory NoticeState({
    required NoticeList noticeListResponse,
    required List<Notice> noticeList,
    @Default(NoticeFilter.latest) NoticeFilter noticeFilter,
    @Default(false) bool isLoading,
  }) = _NoticeState;
}
