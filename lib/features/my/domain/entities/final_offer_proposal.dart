import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/features/home/domain/enums/device_storage_type.dart';

part 'final_offer_proposal.freezed.dart';

@freezed
class FinalOfferProposal with _$FinalOfferProposal {
  const factory FinalOfferProposal({
    required int idx,
    required String deviceModel,
    required String deviceColorName,
    String? deviceColorCode,
    String? deviceFullImg,
    required DeviceStorageType deviceStorage,
    required String branchName,
    String? branchLocation,
  }) = _FinalOfferProposal;

  const FinalOfferProposal._();
}
