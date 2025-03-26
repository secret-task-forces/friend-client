import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget_device_brand_model.freezed.dart';
part 'budget_device_brand_model.g.dart';

@freezed
class BudgetDeviceBrandModel with _$BudgetDeviceBrandModel {
  const factory BudgetDeviceBrandModel({
    @JsonKey(name: 'value') required String value,
    @JsonKey(name: 'title') required String title,
  }) = _BudgetDeviceBrandModel;

  factory BudgetDeviceBrandModel.fromJson(Map<String, Object?> json) =>
      _$BudgetDeviceBrandModelFromJson(json);
}
