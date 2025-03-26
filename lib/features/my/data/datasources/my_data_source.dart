import 'package:flutter_template/features/my/data/models/response/final_offer_proposal_model.dart';

abstract class MyDataSource {
  Future<List<FinalOfferProposalModel>> finalOfferProposal();
}
