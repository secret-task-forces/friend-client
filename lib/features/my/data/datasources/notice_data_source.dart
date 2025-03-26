import 'package:flutter_template/features/my/data/models/response/notice_category_model.dart';
import 'package:flutter_template/features/my/data/models/response/notice_list_model.dart';

abstract class NoticeDataSource {
  Future<List<NoticeCategoryModel>> getNoticeCategoryList();
  Future<NoticeListModel> getNoticeList({
    required int page,
    required int size,
  });
  Future<NoticeListModel> getNoticeListByCategory({
    required int categoryIdx,
    required int page,
    required int size,
  });
}
