// ignore_for_file: constant_identifier_names

enum ChatClosedReason {
  EXPIRED,
  EXIT_USER,
  REPORTED,
  COMPLETED,
  UNKNOWN;

  factory ChatClosedReason.fromString(String value) {
    return switch (value.toLowerCase()) {
      'expired' => ChatClosedReason.EXPIRED,
      'exit_user' => ChatClosedReason.EXIT_USER,
      'reported' => ChatClosedReason.REPORTED,
      'completed' => ChatClosedReason.COMPLETED,
      _ => ChatClosedReason.UNKNOWN,
    };
  }
}
