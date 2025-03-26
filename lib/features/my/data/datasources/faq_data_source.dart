import 'package:flutter_template/features/my/data/models/response/faq_category_model.dart';
import 'package:flutter_template/features/my/data/models/response/faq_list_model.dart';

abstract class FaqDataSource {
  Future<List<FaqCategoryModel>> getFaqCategoryList();
  Future<FaqListModel> getFaqList({
    required int page,
    required int size,
  });
  Future<FaqListModel> getFaqListByCategory({
    required int categoryIdx,
    required int page,
    required int size,
  });
}
