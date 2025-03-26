import 'package:flutter_template/features/account/data/models/response/account_model.dart';
import 'package:flutter_template/features/account/domain/entities/account.dart';
import 'package:flutter_template/features/account/domain/entities/notification_consent.dart';
import 'package:flutter_template/features/account/domain/enums/social_type.dart';

extension AccountMapper on AccountModel {
  Account toEntity() => Account(
        loggedIn: loggedIn,
        id: idx,
        email: email,
        name: name,
        socialType: SocialType.fromString(socialType ?? ''),
        notificationConsent: _getNotificationConsent(),
      );

  NotificationConsent _getNotificationConsent() => NotificationConsent(
        subscribedAds: subscribedAds,
        notifyProposal: notifyProposal,
        notifyChat: notifyChat,
        notifyReview: notifyReview,
      );
}
