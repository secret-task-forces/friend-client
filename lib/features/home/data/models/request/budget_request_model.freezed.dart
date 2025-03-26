// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BudgetRequestModel _$BudgetRequestModelFromJson(Map<String, dynamic> json) {
  return _BudgetRequestModel.fromJson(json);
}

/// @nodoc
mixin _$BudgetRequestModel {
  @JsonKey(name: 'minMonthlyCost')
  int get minMonthlyCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxMonthlyCost')
  int get maxMonthlyCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'usagePurpose')
  UsagePurpose get usagePurpose => throw _privateConstructorUsedError;
  @JsonKey(name: 'userInputUsagePurpose')
  String? get userInputUsagePurpose => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceTypeRequestType')
  DeviceTypeRequestType get deviceTypeRequestType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceType')
  BudgetDeviceType? get deviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'userInputDeviceType')
  String? get userInputDeviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'telecomRequestType')
  TelecomRequestType get telecomRequestType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'telecom')
  Telecom? get telecom => throw _privateConstructorUsedError;
  @JsonKey(name: 'dataUsage')
  DataUsage? get dataUsage => throw _privateConstructorUsedError;

  /// Serializes this BudgetRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BudgetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BudgetRequestModelCopyWith<BudgetRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetRequestModelCopyWith<$Res> {
  factory $BudgetRequestModelCopyWith(
          BudgetRequestModel value, $Res Function(BudgetRequestModel) then) =
      _$BudgetRequestModelCopyWithImpl<$Res, BudgetRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'minMonthlyCost') int minMonthlyCost,
      @JsonKey(name: 'maxMonthlyCost') int maxMonthlyCost,
      @JsonKey(name: 'usagePurpose') UsagePurpose usagePurpose,
      @JsonKey(name: 'userInputUsagePurpose') String? userInputUsagePurpose,
      @JsonKey(name: 'deviceTypeRequestType')
      DeviceTypeRequestType deviceTypeRequestType,
      @JsonKey(name: 'deviceType') BudgetDeviceType? deviceType,
      @JsonKey(name: 'userInputDeviceType') String? userInputDeviceType,
      @JsonKey(name: 'telecomRequestType')
      TelecomRequestType telecomRequestType,
      @JsonKey(name: 'telecom') Telecom? telecom,
      @JsonKey(name: 'dataUsage') DataUsage? dataUsage});
}

/// @nodoc
class _$BudgetRequestModelCopyWithImpl<$Res, $Val extends BudgetRequestModel>
    implements $BudgetRequestModelCopyWith<$Res> {
  _$BudgetRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minMonthlyCost = null,
    Object? maxMonthlyCost = null,
    Object? usagePurpose = freezed,
    Object? userInputUsagePurpose = freezed,
    Object? deviceTypeRequestType = freezed,
    Object? deviceType = freezed,
    Object? userInputDeviceType = freezed,
    Object? telecomRequestType = freezed,
    Object? telecom = freezed,
    Object? dataUsage = freezed,
  }) {
    return _then(_value.copyWith(
      minMonthlyCost: null == minMonthlyCost
          ? _value.minMonthlyCost
          : minMonthlyCost // ignore: cast_nullable_to_non_nullable
              as int,
      maxMonthlyCost: null == maxMonthlyCost
          ? _value.maxMonthlyCost
          : maxMonthlyCost // ignore: cast_nullable_to_non_nullable
              as int,
      usagePurpose: freezed == usagePurpose
          ? _value.usagePurpose
          : usagePurpose // ignore: cast_nullable_to_non_nullable
              as UsagePurpose,
      userInputUsagePurpose: freezed == userInputUsagePurpose
          ? _value.userInputUsagePurpose
          : userInputUsagePurpose // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceTypeRequestType: freezed == deviceTypeRequestType
          ? _value.deviceTypeRequestType
          : deviceTypeRequestType // ignore: cast_nullable_to_non_nullable
              as DeviceTypeRequestType,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as BudgetDeviceType?,
      userInputDeviceType: freezed == userInputDeviceType
          ? _value.userInputDeviceType
          : userInputDeviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      telecomRequestType: freezed == telecomRequestType
          ? _value.telecomRequestType
          : telecomRequestType // ignore: cast_nullable_to_non_nullable
              as TelecomRequestType,
      telecom: freezed == telecom
          ? _value.telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as Telecom?,
      dataUsage: freezed == dataUsage
          ? _value.dataUsage
          : dataUsage // ignore: cast_nullable_to_non_nullable
              as DataUsage?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BudgetRequestModelImplCopyWith<$Res>
    implements $BudgetRequestModelCopyWith<$Res> {
  factory _$$BudgetRequestModelImplCopyWith(_$BudgetRequestModelImpl value,
          $Res Function(_$BudgetRequestModelImpl) then) =
      __$$BudgetRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'minMonthlyCost') int minMonthlyCost,
      @JsonKey(name: 'maxMonthlyCost') int maxMonthlyCost,
      @JsonKey(name: 'usagePurpose') UsagePurpose usagePurpose,
      @JsonKey(name: 'userInputUsagePurpose') String? userInputUsagePurpose,
      @JsonKey(name: 'deviceTypeRequestType')
      DeviceTypeRequestType deviceTypeRequestType,
      @JsonKey(name: 'deviceType') BudgetDeviceType? deviceType,
      @JsonKey(name: 'userInputDeviceType') String? userInputDeviceType,
      @JsonKey(name: 'telecomRequestType')
      TelecomRequestType telecomRequestType,
      @JsonKey(name: 'telecom') Telecom? telecom,
      @JsonKey(name: 'dataUsage') DataUsage? dataUsage});
}

/// @nodoc
class __$$BudgetRequestModelImplCopyWithImpl<$Res>
    extends _$BudgetRequestModelCopyWithImpl<$Res, _$BudgetRequestModelImpl>
    implements _$$BudgetRequestModelImplCopyWith<$Res> {
  __$$BudgetRequestModelImplCopyWithImpl(_$BudgetRequestModelImpl _value,
      $Res Function(_$BudgetRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minMonthlyCost = null,
    Object? maxMonthlyCost = null,
    Object? usagePurpose = freezed,
    Object? userInputUsagePurpose = freezed,
    Object? deviceTypeRequestType = freezed,
    Object? deviceType = freezed,
    Object? userInputDeviceType = freezed,
    Object? telecomRequestType = freezed,
    Object? telecom = freezed,
    Object? dataUsage = freezed,
  }) {
    return _then(_$BudgetRequestModelImpl(
      minMonthlyCost: null == minMonthlyCost
          ? _value.minMonthlyCost
          : minMonthlyCost // ignore: cast_nullable_to_non_nullable
              as int,
      maxMonthlyCost: null == maxMonthlyCost
          ? _value.maxMonthlyCost
          : maxMonthlyCost // ignore: cast_nullable_to_non_nullable
              as int,
      usagePurpose: freezed == usagePurpose
          ? _value.usagePurpose
          : usagePurpose // ignore: cast_nullable_to_non_nullable
              as UsagePurpose,
      userInputUsagePurpose: freezed == userInputUsagePurpose
          ? _value.userInputUsagePurpose
          : userInputUsagePurpose // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceTypeRequestType: freezed == deviceTypeRequestType
          ? _value.deviceTypeRequestType
          : deviceTypeRequestType // ignore: cast_nullable_to_non_nullable
              as DeviceTypeRequestType,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as BudgetDeviceType?,
      userInputDeviceType: freezed == userInputDeviceType
          ? _value.userInputDeviceType
          : userInputDeviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      telecomRequestType: freezed == telecomRequestType
          ? _value.telecomRequestType
          : telecomRequestType // ignore: cast_nullable_to_non_nullable
              as TelecomRequestType,
      telecom: freezed == telecom
          ? _value.telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as Telecom?,
      dataUsage: freezed == dataUsage
          ? _value.dataUsage
          : dataUsage // ignore: cast_nullable_to_non_nullable
              as DataUsage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetRequestModelImpl
    with DiagnosticableTreeMixin
    implements _BudgetRequestModel {
  const _$BudgetRequestModelImpl(
      {@JsonKey(name: 'minMonthlyCost') required this.minMonthlyCost,
      @JsonKey(name: 'maxMonthlyCost') required this.maxMonthlyCost,
      @JsonKey(name: 'usagePurpose') required this.usagePurpose,
      @JsonKey(name: 'userInputUsagePurpose') this.userInputUsagePurpose,
      @JsonKey(name: 'deviceTypeRequestType')
      required this.deviceTypeRequestType,
      @JsonKey(name: 'deviceType') this.deviceType,
      @JsonKey(name: 'userInputDeviceType') this.userInputDeviceType,
      @JsonKey(name: 'telecomRequestType') required this.telecomRequestType,
      @JsonKey(name: 'telecom') this.telecom,
      @JsonKey(name: 'dataUsage') this.dataUsage});

  factory _$BudgetRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'minMonthlyCost')
  final int minMonthlyCost;
  @override
  @JsonKey(name: 'maxMonthlyCost')
  final int maxMonthlyCost;
  @override
  @JsonKey(name: 'usagePurpose')
  final UsagePurpose usagePurpose;
  @override
  @JsonKey(name: 'userInputUsagePurpose')
  final String? userInputUsagePurpose;
  @override
  @JsonKey(name: 'deviceTypeRequestType')
  final DeviceTypeRequestType deviceTypeRequestType;
  @override
  @JsonKey(name: 'deviceType')
  final BudgetDeviceType? deviceType;
  @override
  @JsonKey(name: 'userInputDeviceType')
  final String? userInputDeviceType;
  @override
  @JsonKey(name: 'telecomRequestType')
  final TelecomRequestType telecomRequestType;
  @override
  @JsonKey(name: 'telecom')
  final Telecom? telecom;
  @override
  @JsonKey(name: 'dataUsage')
  final DataUsage? dataUsage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BudgetRequestModel(minMonthlyCost: $minMonthlyCost, maxMonthlyCost: $maxMonthlyCost, usagePurpose: $usagePurpose, userInputUsagePurpose: $userInputUsagePurpose, deviceTypeRequestType: $deviceTypeRequestType, deviceType: $deviceType, userInputDeviceType: $userInputDeviceType, telecomRequestType: $telecomRequestType, telecom: $telecom, dataUsage: $dataUsage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BudgetRequestModel'))
      ..add(DiagnosticsProperty('minMonthlyCost', minMonthlyCost))
      ..add(DiagnosticsProperty('maxMonthlyCost', maxMonthlyCost))
      ..add(DiagnosticsProperty('usagePurpose', usagePurpose))
      ..add(DiagnosticsProperty('userInputUsagePurpose', userInputUsagePurpose))
      ..add(DiagnosticsProperty('deviceTypeRequestType', deviceTypeRequestType))
      ..add(DiagnosticsProperty('deviceType', deviceType))
      ..add(DiagnosticsProperty('userInputDeviceType', userInputDeviceType))
      ..add(DiagnosticsProperty('telecomRequestType', telecomRequestType))
      ..add(DiagnosticsProperty('telecom', telecom))
      ..add(DiagnosticsProperty('dataUsage', dataUsage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetRequestModelImpl &&
            (identical(other.minMonthlyCost, minMonthlyCost) ||
                other.minMonthlyCost == minMonthlyCost) &&
            (identical(other.maxMonthlyCost, maxMonthlyCost) ||
                other.maxMonthlyCost == maxMonthlyCost) &&
            const DeepCollectionEquality()
                .equals(other.usagePurpose, usagePurpose) &&
            (identical(other.userInputUsagePurpose, userInputUsagePurpose) ||
                other.userInputUsagePurpose == userInputUsagePurpose) &&
            const DeepCollectionEquality()
                .equals(other.deviceTypeRequestType, deviceTypeRequestType) &&
            const DeepCollectionEquality()
                .equals(other.deviceType, deviceType) &&
            (identical(other.userInputDeviceType, userInputDeviceType) ||
                other.userInputDeviceType == userInputDeviceType) &&
            const DeepCollectionEquality()
                .equals(other.telecomRequestType, telecomRequestType) &&
            const DeepCollectionEquality().equals(other.telecom, telecom) &&
            const DeepCollectionEquality().equals(other.dataUsage, dataUsage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      minMonthlyCost,
      maxMonthlyCost,
      const DeepCollectionEquality().hash(usagePurpose),
      userInputUsagePurpose,
      const DeepCollectionEquality().hash(deviceTypeRequestType),
      const DeepCollectionEquality().hash(deviceType),
      userInputDeviceType,
      const DeepCollectionEquality().hash(telecomRequestType),
      const DeepCollectionEquality().hash(telecom),
      const DeepCollectionEquality().hash(dataUsage));

  /// Create a copy of BudgetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetRequestModelImplCopyWith<_$BudgetRequestModelImpl> get copyWith =>
      __$$BudgetRequestModelImplCopyWithImpl<_$BudgetRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetRequestModelImplToJson(
      this,
    );
  }
}

abstract class _BudgetRequestModel implements BudgetRequestModel {
  const factory _BudgetRequestModel(
      {@JsonKey(name: 'minMonthlyCost') required final int minMonthlyCost,
      @JsonKey(name: 'maxMonthlyCost') required final int maxMonthlyCost,
      @JsonKey(name: 'usagePurpose') required final UsagePurpose usagePurpose,
      @JsonKey(name: 'userInputUsagePurpose')
      final String? userInputUsagePurpose,
      @JsonKey(name: 'deviceTypeRequestType')
      required final DeviceTypeRequestType deviceTypeRequestType,
      @JsonKey(name: 'deviceType') final BudgetDeviceType? deviceType,
      @JsonKey(name: 'userInputDeviceType') final String? userInputDeviceType,
      @JsonKey(name: 'telecomRequestType')
      required final TelecomRequestType telecomRequestType,
      @JsonKey(name: 'telecom') final Telecom? telecom,
      @JsonKey(name: 'dataUsage')
      final DataUsage? dataUsage}) = _$BudgetRequestModelImpl;

  factory _BudgetRequestModel.fromJson(Map<String, dynamic> json) =
      _$BudgetRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'minMonthlyCost')
  int get minMonthlyCost;
  @override
  @JsonKey(name: 'maxMonthlyCost')
  int get maxMonthlyCost;
  @override
  @JsonKey(name: 'usagePurpose')
  UsagePurpose get usagePurpose;
  @override
  @JsonKey(name: 'userInputUsagePurpose')
  String? get userInputUsagePurpose;
  @override
  @JsonKey(name: 'deviceTypeRequestType')
  DeviceTypeRequestType get deviceTypeRequestType;
  @override
  @JsonKey(name: 'deviceType')
  BudgetDeviceType? get deviceType;
  @override
  @JsonKey(name: 'userInputDeviceType')
  String? get userInputDeviceType;
  @override
  @JsonKey(name: 'telecomRequestType')
  TelecomRequestType get telecomRequestType;
  @override
  @JsonKey(name: 'telecom')
  Telecom? get telecom;
  @override
  @JsonKey(name: 'dataUsage')
  DataUsage? get dataUsage;

  /// Create a copy of BudgetRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetRequestModelImplCopyWith<_$BudgetRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
