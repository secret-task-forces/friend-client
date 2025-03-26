import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/features/my/data/datasources/remote/my_remote_data_source.dart';
import 'package:flutter_template/features/my/data/mappers/final_offer_proposal_mapper.dart';
import 'package:flutter_template/features/my/domain/entities/final_offer_proposal.dart';
import 'package:flutter_template/features/my/domain/repositories/my_repository.dart';

class MyRepositoryRemote implements MyRepository {
  final MyRemoteDataSource _client;

  MyRepositoryRemote(this._client);

  @override
  Future<Either<DioException, List<FinalOfferProposal>>>
      finalOfferProposal() async {
    try {
      final response = await _client.finalOfferProposal();

      return right(response.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return left(e);
    }
  }
}
