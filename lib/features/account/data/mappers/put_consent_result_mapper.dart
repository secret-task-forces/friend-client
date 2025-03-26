import 'package:flutter_template/features/account/data/models/response/put_consent_result_model.dart';
import 'package:flutter_template/features/account/domain/entities/notification_consent.dart';

extension PutConsentResultMapper on PutConsentResultModel {
  NotificationConsent toEntity() => NotificationConsent(
        subscribedAds: subscribedAds ?? false,
        notifyProposal: notifyProposal ?? false,
        notifyChat: notifyChat ?? false,
        notifyReview: notifyReview ?? false,
      );
}
