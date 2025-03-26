import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/features/my/data/datasources/remote/faq_remote_data_source.dart';
import 'package:flutter_template/features/my/data/mappers/faq_category_mapper.dart';
import 'package:flutter_template/features/my/data/mappers/faq_list_mapper.dart';
import 'package:flutter_template/features/my/domain/entities/faq_category.dart';
import 'package:flutter_template/features/my/domain/entities/faq_list.dart';
import 'package:flutter_template/features/my/domain/repositories/faq_repository.dart';

class FaqRepositoryRemote implements FaqRepository {
  FaqRepositoryRemote(this._client);

  final FaqRemoteDataSource _client;

  @override
  Future<Either<DioException, List<FaqCategory>>> getFaqCategoryList() async {
    try {
      final response = await _client.getFaqCategoryList();

      return right(response.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, FaqList>> getFaqList({
    required int page,
    required int size,
    List<String> sort = const ['publishedStartAt,desc', 'idx,desc'],
  }) async {
    try {
      final response = await _client.getFaqList(
        page: page,
        size: size,
        sort: sort,
      );

      return right(response.toEntity());
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, FaqList>> getFaqListByCategory({
    required int categoryIdx,
    required int page,
    required int size,
    List<String> sort = const ['publishedStartAt,desc', 'idx,desc'],
  }) async {
    try {
      final response = await _client.getFaqListByCategory(
        categoryIdx: categoryIdx,
        page: page,
        size: size,
        sort: sort,
      );

      return right(response.toEntity());
    } on DioException catch (e) {
      return left(e);
    }
  }
}
