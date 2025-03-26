import 'package:flutter_template/features/my/data/models/response/faq_list_model.dart';
import 'package:flutter_template/features/my/domain/entities/faq_list.dart';
import 'package:flutter_template/features/my/data/mappers/faq_mapper.dart';

extension FaqListMapper on FaqListModel {
  FaqList toEntity() => FaqList(
        totalPage: totalPage,
        totalCount: totalCount,
        currentPage: currentPage,
        size: size,
        data: data.map((model) => model.toEntity()).toList(),
      );
}
