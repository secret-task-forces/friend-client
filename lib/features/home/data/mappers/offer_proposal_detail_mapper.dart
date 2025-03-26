import 'package:flutter_template/features/home/data/models/response/offer_proposal_detail_model.dart';
import 'package:flutter_template/features/home/domain/entities/offer_proposal_detail.dart';
import 'package:flutter_template/features/home/domain/enums/chat_closed_reason.dart';
import 'package:flutter_template/features/home/domain/enums/chat_room_status.dart';
import 'package:flutter_template/features/home/domain/enums/device_storage_type.dart';

extension OfferProposalDetailMapper on OfferProposalDetailModel {
  OfferProposalDetail toEntity() => OfferProposalDetail(
        idx: idx,
        branchIdx: branchIdx,
        branchName: branchName,
        monthlyTotalInstallment: monthlyTotalInstallment,
        additionalSupportAmount: additionalSupportAmount,
        deviceModel: deviceModel,
        deviceFullImg: deviceFullImg,
        colorCode: colorCode,
        colorName: colorName,
        deviceStorageType: deviceStorageType != null
            ? DeviceStorageType.fromString(deviceStorageType!)
            : null,
        monthlyPlanFee: monthlyPlanFee,
        planName: planName,
        dataLimit: dataLimit,
        callLimit: callLimit,
        smsLimit: smsLimit,
        telecom: telecom,
        extraInfo: extraInfo,
        additionalBenefits: additionalBenefits,
        planDescription: planDescription,
        chatRoomStatus: ChatRoomStatus.fromString(chatRoomStatus),
        chatClosedReason: chatClosedReason != null
            ? ChatClosedReason.fromString(chatClosedReason!)
            : null,
        chatRoomId: chatRoomId,
      );
}
