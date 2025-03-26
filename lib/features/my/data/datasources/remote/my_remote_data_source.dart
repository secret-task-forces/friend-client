import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_template/features/my/data/datasources/my_data_source.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_template/features/my/data/models/response/final_offer_proposal_model.dart';

import 'my_api_paths.dart';
part 'my_remote_data_source.g.dart';

@RestApi()
abstract class MyRemoteDataSource implements MyDataSource {
  factory MyRemoteDataSource(
    Dio dio,
  ) = _MyRemoteDataSource;

  @override
  @GET(MyApiPaths.finalOfferProposal)
  @Headers({'accessToken': 'true'})
  Future<List<FinalOfferProposalModel>> finalOfferProposal();
}
