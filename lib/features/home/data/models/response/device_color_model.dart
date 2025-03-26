import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'device_color_model.freezed.dart';
part 'device_color_model.g.dart';

@freezed
class DeviceColorModel with _$DeviceColorModel {
  const factory DeviceColorModel({
    @JsonKey(name: 'idx') required int idx,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'fullImg') required String fullImg,
    @JsonKey(name: 'partialImg1') required String partialImg1,
  }) = _DeviceColorModel;

  factory DeviceColorModel.fromJson(Map<String, Object?> json) =>
      _$DeviceColorModelFromJson(json);
}
