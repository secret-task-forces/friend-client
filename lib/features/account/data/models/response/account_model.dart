import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
class AccountModel with _$AccountModel {
  const factory AccountModel({
    @JsonKey(name: 'loggedIn') required bool loggedIn,
    @JsonKey(name: 'idx') int? idx,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'socialType') String? socialType,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'subscribedAds') required bool subscribedAds,
    @JsonKey(name: 'notifyProposal') required bool notifyProposal,
    @JsonKey(name: 'notifyChat') required bool notifyChat,
    @JsonKey(name: 'notifyReview') required bool notifyReview,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, Object?> json) =>
      _$AccountModelFromJson(json);
}
