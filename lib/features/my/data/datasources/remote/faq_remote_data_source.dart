import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_template/features/my/data/datasources/faq_data_source.dart';
import 'package:flutter_template/features/my/data/models/response/faq_category_model.dart';
import 'package:flutter_template/features/my/data/models/response/faq_list_model.dart';
import 'package:retrofit/retrofit.dart';

import 'faq_api_paths.dart';
part 'faq_remote_data_source.g.dart';

@RestApi()
abstract class FaqRemoteDataSource implements FaqDataSource {
  factory FaqRemoteDataSource(
    Dio dio,
  ) = _FaqRemoteDataSource;

  @override
  @GET(FaqApiPaths.faqCategory)
  @Headers({'accessToken': 'true'})
  Future<List<FaqCategoryModel>> getFaqCategoryList();

  @override
  @GET(FaqApiPaths.faq)
  @Headers({'accessToken': 'true'})
  Future<FaqListModel> getFaqList({
    @Query('page') required int page,
    @Query('size') required int size,
    @Query('sort')
    List<String> sort = const ['publishedStartAt,desc', 'idx,desc'],
  });

  @override
  @GET(FaqApiPaths.faqCategoryDetail)
  @Headers({'accessToken': 'true'})
  Future<FaqListModel> getFaqListByCategory({
    @Path('idx') required int categoryIdx,
    @Query('page') required int page,
    @Query('size') required int size,
    @Query('sort')
    List<String> sort = const ['publishedStartAt,desc', 'idx,desc'],
  });
}
