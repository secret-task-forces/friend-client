import 'package:flutter_template/features/my/data/models/response/faq_category_model.dart';
import 'package:flutter_template/features/my/domain/entities/faq_category.dart';

extension FaqCategoryMapper on FaqCategoryModel {
  FaqCategory toEntity() => FaqCategory(
        idx: idx,
        name: name,
      );
}
