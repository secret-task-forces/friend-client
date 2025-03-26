import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/features/home/domain/enums/spec_device_type.dart';
import 'package:flutter_template/features/home/domain/enums/device_storage_type.dart';

part 'device_model.freezed.dart';
part 'device_model.g.dart';

@freezed
class DeviceModel with _$DeviceModel {
  const factory DeviceModel({
    @JsonKey(name: 'idx') required int idx,
    @JsonKey(name: 'model') required String model,
    @JsonKey(name: 'deviceType') required String deviceType,
    @JsonKey(name: 'deviceStorageTypes')
    required List<String> deviceStorageTypes,
  }) = _DeviceModel;

  factory DeviceModel.fromJson(Map<String, Object?> json) =>
      _$DeviceModelFromJson(json);
}
