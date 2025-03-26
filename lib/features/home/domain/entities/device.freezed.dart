// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Device {
  int get idx => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  SpecDeviceType get deviceType => throw _privateConstructorUsedError;
  List<DeviceStorageType> get deviceStorageTypes =>
      throw _privateConstructorUsedError;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res, Device>;
  @useResult
  $Res call(
      {int idx,
      String model,
      SpecDeviceType deviceType,
      List<DeviceStorageType> deviceStorageTypes});
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res, $Val extends Device>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? model = null,
    Object? deviceType = null,
    Object? deviceStorageTypes = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as SpecDeviceType,
      deviceStorageTypes: null == deviceStorageTypes
          ? _value.deviceStorageTypes
          : deviceStorageTypes // ignore: cast_nullable_to_non_nullable
              as List<DeviceStorageType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceImplCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$$DeviceImplCopyWith(
          _$DeviceImpl value, $Res Function(_$DeviceImpl) then) =
      __$$DeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx,
      String model,
      SpecDeviceType deviceType,
      List<DeviceStorageType> deviceStorageTypes});
}

/// @nodoc
class __$$DeviceImplCopyWithImpl<$Res>
    extends _$DeviceCopyWithImpl<$Res, _$DeviceImpl>
    implements _$$DeviceImplCopyWith<$Res> {
  __$$DeviceImplCopyWithImpl(
      _$DeviceImpl _value, $Res Function(_$DeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? model = null,
    Object? deviceType = null,
    Object? deviceStorageTypes = null,
  }) {
    return _then(_$DeviceImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as SpecDeviceType,
      deviceStorageTypes: null == deviceStorageTypes
          ? _value._deviceStorageTypes
          : deviceStorageTypes // ignore: cast_nullable_to_non_nullable
              as List<DeviceStorageType>,
    ));
  }
}

/// @nodoc

class _$DeviceImpl extends _Device {
  const _$DeviceImpl(
      {required this.idx,
      required this.model,
      required this.deviceType,
      required final List<DeviceStorageType> deviceStorageTypes})
      : _deviceStorageTypes = deviceStorageTypes,
        super._();

  @override
  final int idx;
  @override
  final String model;
  @override
  final SpecDeviceType deviceType;
  final List<DeviceStorageType> _deviceStorageTypes;
  @override
  List<DeviceStorageType> get deviceStorageTypes {
    if (_deviceStorageTypes is EqualUnmodifiableListView)
      return _deviceStorageTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deviceStorageTypes);
  }

  @override
  String toString() {
    return 'Device(idx: $idx, model: $model, deviceType: $deviceType, deviceStorageTypes: $deviceStorageTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            const DeepCollectionEquality()
                .equals(other._deviceStorageTypes, _deviceStorageTypes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idx, model, deviceType,
      const DeepCollectionEquality().hash(_deviceStorageTypes));

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceImplCopyWith<_$DeviceImpl> get copyWith =>
      __$$DeviceImplCopyWithImpl<_$DeviceImpl>(this, _$identity);
}

abstract class _Device extends Device {
  const factory _Device(
          {required final int idx,
          required final String model,
          required final SpecDeviceType deviceType,
          required final List<DeviceStorageType> deviceStorageTypes}) =
      _$DeviceImpl;
  const _Device._() : super._();

  @override
  int get idx;
  @override
  String get model;
  @override
  SpecDeviceType get deviceType;
  @override
  List<DeviceStorageType> get deviceStorageTypes;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceImplCopyWith<_$DeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
