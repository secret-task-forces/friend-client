import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/features/account/domain/entities/notification_consent.dart';
import 'package:flutter_template/features/account/domain/enums/social_type.dart';

part 'account.freezed.dart';

@freezed
class Account with _$Account {
  const factory Account({
    required bool loggedIn,
    int? id,
    String? email,
    SocialType? socialType,
    String? name,
    required NotificationConsent? notificationConsent,
  }) = _Account;

  const Account._();

  bool get subscribedAds => notificationConsent?.subscribedAds ?? false;
  bool get notifyProposal => notificationConsent?.notifyProposal ?? false;
  bool get notifyChat => notificationConsent?.notifyChat ?? false;
  bool get notifyReview => notificationConsent?.notifyReview ?? false;

  String get socialTypeString => socialType?.krName ?? '일반 계정';
}
