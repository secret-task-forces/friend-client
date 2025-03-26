import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'notice_model.freezed.dart';
part 'notice_model.g.dart';

@freezed
class NoticeModel with _$NoticeModel {
  const factory NoticeModel({
    @JsonKey(name: 'idx') required int idx,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'publishedAt') required int publishedAt,
  }) = _NoticeModel;

  factory NoticeModel.fromJson(Map<String, Object?> json) =>
      _$NoticeModelFromJson(json);
}
