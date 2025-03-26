import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/features/home/domain/entities/quote_request.dart';
import 'package:flutter_template/features/home/domain/entities/offer_proposal_summary.dart';
import 'package:flutter_template/features/home/domain/entities/offer_proposal_detail.dart';

abstract class HomeRepository {
  Future<Either<DioException, List<QuoteRequest>>> quoteRequest();

  Future<Either<DioException, List<OfferProposalSummary>>> quoteRequestDetail({
    required int idx,
  });

  Future<Either<DioException, OfferProposalDetail>> offerProposalDetail({
    required int idx,
  });

  Future<Either<DioException, void>> inquireChat({required int idx});
}
