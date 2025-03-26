import 'package:flutter_template/features/account/data/models/response/token_model.dart';
import 'package:flutter_template/features/account/domain/entities/token.dart';

extension TokenMapper on TokenModel {
  Token toEntity() => Token(
        id: idx,
        accessToken: accessToken,
        refreshToken: refreshToken,
      );
}
