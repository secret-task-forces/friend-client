import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_template/features/my/data/datasources/notice_data_source.dart';
import 'package:flutter_template/features/my/data/models/response/notice_category_model.dart';
import 'package:flutter_template/features/my/data/models/response/notice_list_model.dart';
import 'package:retrofit/retrofit.dart';

import 'notice_api_paths.dart';
part 'notice_remote_data_source.g.dart';

@RestApi()
abstract class NoticeRemoteDataSource implements NoticeDataSource {
  factory NoticeRemoteDataSource(
    Dio dio,
  ) = _NoticeRemoteDataSource;

  @override
  @GET(NoticeApiPaths.noticeCategory)
  @Headers({'accessToken': 'true'})
  Future<List<NoticeCategoryModel>> getNoticeCategoryList();

  @override
  @GET(NoticeApiPaths.notice)
  @Headers({'accessToken': 'true'})
  Future<NoticeListModel> getNoticeList({
    @Query('page') required int page,
    @Query('size') required int size,
    @Query('sort')
    List<String> sort = const ['publishedStartAt,desc', 'idx,desc'],
  });

  @override
  @GET(NoticeApiPaths.noticeCategoryDetail)
  @Headers({'accessToken': 'true'})
  Future<NoticeListModel> getNoticeListByCategory({
    @Path('idx') required int categoryIdx,
    @Query('page') required int page,
    @Query('size') required int size,
    @Query('sort')
    List<String> sort = const ['publishedStartAt,desc', 'idx,desc'],
  });
}
