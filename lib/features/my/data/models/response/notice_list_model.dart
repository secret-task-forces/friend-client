import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/features/my/data/models/response/notice_model.dart';

part 'notice_list_model.freezed.dart';
part 'notice_list_model.g.dart';

@freezed
class NoticeListModel with _$NoticeListModel {
  const factory NoticeListModel({
    @JsonKey(name: 'totalPage') required int totalPage,
    @JsonKey(name: 'totalCount') required int totalCount,
    @JsonKey(name: 'currentPage') required int currentPage,
    @JsonKey(name: 'size') required int size,
    @JsonKey(name: 'data') required List<NoticeModel> data,
  }) = _NoticeListModel;

  factory NoticeListModel.fromJson(Map<String, Object?> json) =>
      _$NoticeListModelFromJson(json);
}
