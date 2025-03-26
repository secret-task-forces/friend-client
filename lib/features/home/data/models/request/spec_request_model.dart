import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/features/home/domain/enums/device_storage_type.dart';
import 'package:flutter_template/features/home/domain/enums/device_color_request_type.dart';
import 'package:flutter_template/features/home/domain/enums/telecom_request_type.dart';
import 'package:flutter_template/features/home/domain/enums/telecom.dart';
import 'package:flutter_template/features/home/domain/enums/data_usage.dart';

part 'spec_request_model.freezed.dart';
part 'spec_request_model.g.dart';

@freezed
class SpecRequestModel with _$SpecRequestModel {
  const factory SpecRequestModel({
    @JsonKey(name: 'deviceColorRequestType')
    DeviceColorRequestType? deviceColorRequestType,
    @JsonKey(name: 'deviceIdx') int? deviceIdx,
    @JsonKey(name: 'deviceColorIdx') int? deviceColorIdx,
    @JsonKey(name: 'userInputDevice') String? userInputDevice,
    @JsonKey(name: 'userInputColor') String? userInputColor,
    @JsonKey(name: 'storage') DeviceStorageType? storage,
    @JsonKey(name: 'telecomRequestType') TelecomRequestType? telecomRequestType,
    @JsonKey(name: 'telecom') Telecom? telecom,
    @JsonKey(name: 'dataUsage') DataUsage? dataUsage,
  }) = _SpecRequestModel;

  factory SpecRequestModel.fromJson(Map<String, Object?> json) =>
      _$SpecRequestModelFromJson(json);
}
