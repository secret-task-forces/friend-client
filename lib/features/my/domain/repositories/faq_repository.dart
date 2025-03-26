import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/features/my/domain/entities/faq_list.dart';
import 'package:flutter_template/features/my/domain/entities/faq_category.dart';

abstract class FaqRepository {
  Future<Either<DioException, FaqList>> getFaqList({
    required int page,
    required int size,
    List<String> sort = const ['publishedStartAt,desc', 'idx,desc'],
  });

  Future<Either<DioException, List<FaqCategory>>> getFaqCategoryList();

  Future<Either<DioException, FaqList>> getFaqListByCategory({
    required int categoryIdx,
    required int page,
    required int size,
    List<String> sort = const ['publishedStartAt,desc', 'idx,desc'],
  });
}
