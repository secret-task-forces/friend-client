import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/features/my/domain/entities/notice_category.dart';
import 'package:flutter_template/features/my/domain/entities/notice_list.dart';

abstract class NoticeRepository {
  Future<Either<DioException, NoticeList>> getNoticeList({
    required int page,
    required int size,
    List<String> sort = const ['publishedStartAt,desc', 'idx,desc'],
  });

  Future<Either<DioException, List<NoticeCategory>>> getNoticeCategoryList();

  Future<Either<DioException, NoticeList>> getNoticeListByCategory({
    required int categoryIdx,
    required int page,
    required int size,
    List<String> sort = const ['publishedStartAt,desc', 'idx,desc'],
  });
}
