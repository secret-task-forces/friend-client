import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'post_withdrawal_model.freezed.dart';
part 'post_withdrawal_model.g.dart';

@freezed
class PostWithdrawalModel with _$PostWithdrawalModel {
  const factory PostWithdrawalModel({
    @JsonKey(name: 'reasons') required List<String> reasons,
  }) = _PostWithdrawalModel;

  factory PostWithdrawalModel.fromJson(Map<String, Object?> json) =>
      _$PostWithdrawalModelFromJson(json);
}
