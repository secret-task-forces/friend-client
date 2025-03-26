import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_template/features/home/data/datasources/home_data_source.dart';
import 'package:flutter_template/features/home/data/models/response/offer_proposal_summary_model.dart';
import 'package:flutter_template/features/home/data/models/response/offer_proposal_detail_model.dart';
import 'package:flutter_template/features/home/data/models/response/quote_request_model.dart';
import 'package:retrofit/retrofit.dart';

import 'home_api_paths.dart';
part 'home_remote_data_source.g.dart';

@RestApi()
abstract class HomeRemoteDataSource implements HomeDataSource {
  factory HomeRemoteDataSource(
    Dio dio,
  ) = _HomeRemoteDataSource;

  @override
  @GET(HomeApiPaths.quoteRequest)
  @Headers({'accessToken': 'true'})
  Future<List<QuoteRequestModel>> quoteRequest();

  @override
  @GET(HomeApiPaths.quoteRequestDetail)
  @Headers({'accessToken': 'true'})
  Future<List<OfferProposalSummaryModel>> quoteRequestDetail(
      {@Path('idx') required int idx});

  @override
  @GET(HomeApiPaths.offerProposalDetailV2)
  @Headers({'accessToken': 'true'})
  Future<OfferProposalDetailModel> offerProposalDetail(
      {@Path('idx') required int idx});

  @override
  @PATCH(HomeApiPaths.offerProposalDetail)
  @Headers({'accessToken': 'true'})
  Future<void> inquireChat({@Path('idx') required int idx});
}
