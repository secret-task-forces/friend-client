import 'package:flutter_template/features/my/data/models/response/notice_category_model.dart';
import 'package:flutter_template/features/my/domain/entities/notice_category.dart';

extension NoticeCategoryMapper on NoticeCategoryModel {
  NoticeCategory toEntity() => NoticeCategory(
        idx: idx,
        name: name,
      );
}
