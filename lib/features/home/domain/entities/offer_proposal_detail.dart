import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/features/home/domain/enums/chat_closed_reason.dart';
import 'package:flutter_template/features/home/domain/enums/chat_room_status.dart';
import 'package:flutter_template/features/home/domain/enums/device_storage_type.dart';

part 'offer_proposal_detail.freezed.dart';

@freezed
class OfferProposalDetail with _$OfferProposalDetail {
  const factory OfferProposalDetail({
    required int idx,
    required int branchIdx,
    required String branchName,
    required int monthlyTotalInstallment,
    required int additionalSupportAmount,
    String? deviceModel,
    String? deviceFullImg,
    String? colorCode,
    String? colorName,
    DeviceStorageType? deviceStorageType,
    required int monthlyPlanFee,
    required String planName,
    required String dataLimit,
    required String callLimit,
    required String smsLimit,
    required String telecom,
    String? extraInfo,
    List<String>? additionalBenefits,
    String? planDescription,
    required ChatRoomStatus chatRoomStatus,
    ChatClosedReason? chatClosedReason,
    String? chatRoomId,
  }) = _OfferProposalDetail;

  const OfferProposalDetail._();
}
