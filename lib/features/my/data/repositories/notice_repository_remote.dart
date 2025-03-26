import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/features/my/data/datasources/remote/notice_remote_data_source.dart';
import 'package:flutter_template/features/my/data/mappers/notice_category_mapper.dart';
import 'package:flutter_template/features/my/data/mappers/notice_list_mapper.dart';
import 'package:flutter_template/features/my/domain/repositories/notice_repository.dart';
import 'package:flutter_template/features/my/domain/entities/notice_category.dart';
import 'package:flutter_template/features/my/domain/entities/notice_list.dart';

class NoticeRepositoryRemote implements NoticeRepository {
  final NoticeRemoteDataSource _client;

  NoticeRepositoryRemote(this._client);

  @override
  Future<Either<DioException, List<NoticeCategory>>>
      getNoticeCategoryList() async {
    try {
      final response = await _client.getNoticeCategoryList();

      return right(response.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, NoticeList>> getNoticeList({
    required int page,
    required int size,
    List<String> sort = const ['publishedStartAt,desc', 'idx,desc'],
  }) async {
    try {
      final response = await _client.getNoticeList(
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
  Future<Either<DioException, NoticeList>> getNoticeListByCategory({
    required int categoryIdx,
    required int page,
    required int size,
    List<String> sort = const ['publishedStartAt,desc', 'idx,desc'],
  }) async {
    try {
      final response = await _client.getNoticeListByCategory(
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
