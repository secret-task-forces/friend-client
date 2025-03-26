import 'package:flutter_template/features/my/data/models/response/final_offer_proposal_model.dart';
import 'package:flutter_template/features/my/domain/entities/final_offer_proposal.dart';
import 'package:flutter_template/features/home/domain/enums/device_storage_type.dart';

extension FinalOfferProposalMapper on FinalOfferProposalModel {
  FinalOfferProposal toEntity() => FinalOfferProposal(
        idx: idx,
        deviceModel: deviceModel,
        deviceColorName: deviceColorName,
        deviceColorCode: deviceColorCode,
        deviceFullImg: deviceFullImg,
        deviceStorage: DeviceStorageType.fromString(deviceStorage),
        branchName: branchName,
        branchLocation: branchLocation,
      );
}
