import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/features/home/domain/enums/chat_closed_reason.dart';
import 'package:flutter_template/features/home/domain/enums/chat_room_status.dart';
import 'package:flutter_template/features/home/domain/enums/device_storage_type.dart';

part 'offer_proposal_summary.freezed.dart';

@freezed
class OfferProposalSummary with _$OfferProposalSummary {
  const factory OfferProposalSummary({
    required int idx,
    required int branchIdx,
    required String branchName,
    required double branchReviewRating,
    required String branchLocation,
    required String branchBcode,
    required double branchX,
    required double branchY,
    String? deviceModel,
    String? colorCode,
    String? colorName,
    DeviceStorageType? deviceStorageType,
    required int monthlyTotalInstallment,
    required int additionalSupportAmount,
    required ChatRoomStatus chatRoomStatus,
    ChatClosedReason? chatClosedReason,
  }) = _OfferProposalSummary;

  const OfferProposalSummary._();
}
