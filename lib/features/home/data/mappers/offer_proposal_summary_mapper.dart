import 'package:flutter_template/features/home/data/models/response/offer_proposal_summary_model.dart';
import 'package:flutter_template/features/home/domain/entities/offer_proposal_summary.dart';
import 'package:flutter_template/features/home/domain/enums/chat_closed_reason.dart';
import 'package:flutter_template/features/home/domain/enums/chat_room_status.dart';
import 'package:flutter_template/features/home/domain/enums/device_storage_type.dart';

extension OfferProposalSummaryMapper on OfferProposalSummaryModel {
  OfferProposalSummary toEntity() => OfferProposalSummary(
        idx: idx,
        branchIdx: branchIdx,
        branchName: branchName,
        branchReviewRating: branchReviewRating,
        branchLocation: branchLocation,
        branchBcode: branchBcode,
        branchX: branchX,
        branchY: branchY,
        deviceModel: deviceModel,
        colorCode: colorCode,
        colorName: colorName,
        deviceStorageType: deviceStorageType != null
            ? DeviceStorageType.fromString(deviceStorageType!)
            : null,
        monthlyTotalInstallment: monthlyTotalInstallment,
        additionalSupportAmount: additionalSupportAmount,
        chatRoomStatus: ChatRoomStatus.fromString(chatRoomStatus),
        chatClosedReason: chatClosedReason != null
            ? ChatClosedReason.fromString(chatClosedReason!)
            : null,
      );
}
