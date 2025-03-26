// freezed를 사용하는 경우
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';

@freezed
class Token with _$Token {
  const factory Token({
    required int id,
    required String accessToken,
    required String refreshToken,
  }) = _Token;

  const Token._();

  bool get isAccessTokenValid => accessToken.isNotEmpty;

  bool get hasValidTokens => accessToken.isNotEmpty && refreshToken.isNotEmpty;
}
