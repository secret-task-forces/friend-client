// freezed를 사용하는 경우
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_consent.freezed.dart';

@freezed
class NotificationConsent with _$NotificationConsent {
  const factory NotificationConsent({
    required bool subscribedAds,
    required bool notifyProposal,
    required bool notifyChat,
    required bool notifyReview,
  }) = _NotificationConsent;

  const NotificationConsent._();

  bool get allTrue =>
      subscribedAds && notifyProposal && notifyChat && notifyReview;
}
