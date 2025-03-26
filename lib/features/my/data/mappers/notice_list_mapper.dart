import 'package:flutter_template/features/my/data/mappers/notice_mapper.dart';
import 'package:flutter_template/features/my/data/models/response/notice_list_model.dart';
import 'package:flutter_template/features/my/domain/entities/notice_list.dart';

extension NoticeListMapper on NoticeListModel {
  NoticeList toEntity() => NoticeList(
        totalPage: totalPage,
        totalCount: totalCount,
        currentPage: currentPage,
        size: size,
        data: data.map((model) => model.toEntity()).toList(),
      );
}
