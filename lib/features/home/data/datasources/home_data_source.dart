import 'package:flutter_template/features/home/data/models/response/offer_proposal_detail_model.dart';
import 'package:flutter_template/features/home/data/models/response/offer_proposal_summary_model.dart';
import 'package:flutter_template/features/home/data/models/response/quote_request_model.dart';

abstract class HomeDataSource {
  Future<List<QuoteRequestModel>> quoteRequest();
  Future<List<OfferProposalSummaryModel>> quoteRequestDetail(
      {required int idx});
  Future<OfferProposalDetailModel> offerProposalDetail({required int idx});
  Future<void> inquireChat({required int idx});
}
