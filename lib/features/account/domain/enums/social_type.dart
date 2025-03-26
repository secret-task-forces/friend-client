// ignore_for_file: constant_identifier_names

enum SocialType {
  KAKAO,
  APPLE,
  UNKNOWN;

  factory SocialType.fromString(String value) {
    return switch (value.toLowerCase()) {
      'kakao' => SocialType.KAKAO,
      'apple' => SocialType.APPLE,
      _ => SocialType.UNKNOWN,
    };
  }
}

extension SocialTypeExtension on SocialType {
  String get krName {
    switch (this) {
      case SocialType.KAKAO:
        return '카카오톡';
      case SocialType.APPLE:
        return '애플';
      case SocialType.UNKNOWN:
        return '알 수 없음';
    }
  }
}
