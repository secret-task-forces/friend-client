import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice.freezed.dart';

@freezed
class Notice with _$Notice {
  const factory Notice({
    required int idx,
    required String title,
    required String content,
    required int publishedAt,
  }) = _Notice;
}
