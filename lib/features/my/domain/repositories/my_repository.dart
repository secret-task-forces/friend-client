import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/features/my/domain/entities/final_offer_proposal.dart';

abstract class MyRepository {
  Future<Either<DioException, List<FinalOfferProposal>>> finalOfferProposal();
}
