import 'package:flutter_template/features/my/data/models/response/notice_model.dart';
import 'package:flutter_template/features/my/domain/entities/notice.dart';

extension NoticeMapper on NoticeModel {
  Notice toEntity() => Notice(
        idx: idx,
        title: title,
        content: content,
        publishedAt: publishedAt,
      );
}
