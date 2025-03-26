// ignore_for_file: constant_identifier_names

enum ConsentType {
  ALL,
  SUBSCRIBED_ADS,
  NOTIFY_PROPOSAL,
  NOTIFY_CHAT,
  NOTIFY_REVIEW,
  UNKNOWN;

  factory ConsentType.fromString(String value) {
    return switch (value.toLowerCase()) {
      'all' => ConsentType.ALL,
      'subscribed_ads' => ConsentType.SUBSCRIBED_ADS,
      'notify_proposal' => ConsentType.NOTIFY_PROPOSAL,
      'notify_chat' => ConsentType.NOTIFY_CHAT,
      'notify_review' => ConsentType.NOTIFY_REVIEW,
      _ => ConsentType.UNKNOWN,
    };
  }
}
