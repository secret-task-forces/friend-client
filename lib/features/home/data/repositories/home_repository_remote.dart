import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/features/home/data/datasources/remote/home_remote_data_source.dart';
import 'package:flutter_template/features/home/data/mappers/offer_proposal_detail_mapper.dart';
import 'package:flutter_template/features/home/data/mappers/offer_proposal_summary_mapper.dart';
import 'package:flutter_template/features/home/data/mappers/quote_request_mapper.dart';
import 'package:flutter_template/features/home/domain/repositories/home_repository.dart';
import 'package:flutter_template/features/home/domain/entities/quote_request.dart';
import 'package:flutter_template/features/home/domain/entities/offer_proposal_summary.dart';
import 'package:flutter_template/features/home/domain/entities/offer_proposal_detail.dart';

class HomeRepositoryRemote implements HomeRepository {
  final HomeRemoteDataSource _client;

  HomeRepositoryRemote(this._client);

  @override
  Future<Either<DioException, List<QuoteRequest>>> quoteRequest() async {
    try {
      final response = await _client.quoteRequest();

      return right(response.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, List<OfferProposalSummary>>> quoteRequestDetail(
      {required int idx}) async {
    try {
      final response = await _client.quoteRequestDetail(idx: idx);

      return right(response.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, OfferProposalDetail>> offerProposalDetail({
    required int idx,
  }) async {
    try {
      final response = await _client.offerProposalDetail(idx: idx);

      return right(response.toEntity());
    } on DioException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<DioException, void>> inquireChat({required int idx}) async {
    try {
      final response = await _client.inquireChat(idx: idx);

      return right(response);
    } on DioException catch (e) {
      return left(e);
    }
  }
}
