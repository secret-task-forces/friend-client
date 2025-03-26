// ignore_for_file: constant_identifier_names

enum ChatRoomStatus {
  NOT_CONNECTED,
  USER_CONNECTED,
  BUSINESS_CONNECTED,
  CLOSED,
  UNKNOWN;

  factory ChatRoomStatus.fromString(String value) {
    return switch (value.toLowerCase()) {
      'not_connected' => ChatRoomStatus.NOT_CONNECTED,
      'user_connected' => ChatRoomStatus.USER_CONNECTED,
      'business_connected' => ChatRoomStatus.BUSINESS_CONNECTED,
      'closed' => ChatRoomStatus.CLOSED,
      _ => ChatRoomStatus.UNKNOWN,
    };
  }
}
