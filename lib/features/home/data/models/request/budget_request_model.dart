import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/features/home/domain/enums/device_type_request_type.dart';
import 'package:flutter_template/features/home/domain/enums/usage_purpose.dart';
import 'package:flutter_template/features/home/domain/enums/telecom_request_type.dart';
import 'package:flutter_template/features/home/domain/enums/budget_device_type.dart';
import 'package:flutter_template/features/home/domain/enums/telecom.dart';
import 'package:flutter_template/features/home/domain/enums/data_usage.dart';

part 'budget_request_model.freezed.dart';
part 'budget_request_model.g.dart';

@freezed
class BudgetRequestModel with _$BudgetRequestModel {
  const factory BudgetRequestModel({
    @JsonKey(name: 'minMonthlyCost') required int minMonthlyCost,
    @JsonKey(name: 'maxMonthlyCost') required int maxMonthlyCost,
    @JsonKey(name: 'usagePurpose') required UsagePurpose usagePurpose,
    @JsonKey(name: 'userInputUsagePurpose') String? userInputUsagePurpose,
    @JsonKey(name: 'deviceTypeRequestType')
    required DeviceTypeRequestType deviceTypeRequestType,
    @JsonKey(name: 'deviceType') BudgetDeviceType? deviceType,
    @JsonKey(name: 'userInputDeviceType') String? userInputDeviceType,
    @JsonKey(name: 'telecomRequestType')
    required TelecomRequestType telecomRequestType,
    @JsonKey(name: 'telecom') Telecom? telecom,
    @JsonKey(name: 'dataUsage') DataUsage? dataUsage,
  }) = _BudgetRequestModel;

  factory BudgetRequestModel.fromJson(Map<String, Object?> json) =>
      _$BudgetRequestModelFromJson(json);
}
