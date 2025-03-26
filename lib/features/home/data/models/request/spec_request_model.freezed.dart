// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spec_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecRequestModel _$SpecRequestModelFromJson(Map<String, dynamic> json) {
  return _SpecRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SpecRequestModel {
  @JsonKey(name: 'deviceColorRequestType')
  DeviceColorRequestType? get deviceColorRequestType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceIdx')
  int? get deviceIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceColorIdx')
  int? get deviceColorIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'userInputDevice')
  String? get userInputDevice => throw _privateConstructorUsedError;
  @JsonKey(name: 'userInputColor')
  String? get userInputColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'storage')
  DeviceStorageType? get storage => throw _privateConstructorUsedError;
  @JsonKey(name: 'telecomRequestType')
  TelecomRequestType? get telecomRequestType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'telecom')
  Telecom? get telecom => throw _privateConstructorUsedError;
  @JsonKey(name: 'dataUsage')
  DataUsage? get dataUsage => throw _privateConstructorUsedError;

  /// Serializes this SpecRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpecRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecRequestModelCopyWith<SpecRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecRequestModelCopyWith<$Res> {
  factory $SpecRequestModelCopyWith(
          SpecRequestModel value, $Res Function(SpecRequestModel) then) =
      _$SpecRequestModelCopyWithImpl<$Res, SpecRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceColorRequestType')
      DeviceColorRequestType? deviceColorRequestType,
      @JsonKey(name: 'deviceIdx') int? deviceIdx,
      @JsonKey(name: 'deviceColorIdx') int? deviceColorIdx,
      @JsonKey(name: 'userInputDevice') String? userInputDevice,
      @JsonKey(name: 'userInputColor') String? userInputColor,
      @JsonKey(name: 'storage') DeviceStorageType? storage,
      @JsonKey(name: 'telecomRequestType')
      TelecomRequestType? telecomRequestType,
      @JsonKey(name: 'telecom') Telecom? telecom,
      @JsonKey(name: 'dataUsage') DataUsage? dataUsage});
}

/// @nodoc
class _$SpecRequestModelCopyWithImpl<$Res, $Val extends SpecRequestModel>
    implements $SpecRequestModelCopyWith<$Res> {
  _$SpecRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceColorRequestType = freezed,
    Object? deviceIdx = freezed,
    Object? deviceColorIdx = freezed,
    Object? userInputDevice = freezed,
    Object? userInputColor = freezed,
    Object? storage = freezed,
    Object? telecomRequestType = freezed,
    Object? telecom = freezed,
    Object? dataUsage = freezed,
  }) {
    return _then(_value.copyWith(
      deviceColorRequestType: freezed == deviceColorRequestType
          ? _value.deviceColorRequestType
          : deviceColorRequestType // ignore: cast_nullable_to_non_nullable
              as DeviceColorRequestType?,
      deviceIdx: freezed == deviceIdx
          ? _value.deviceIdx
          : deviceIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceColorIdx: freezed == deviceColorIdx
          ? _value.deviceColorIdx
          : deviceColorIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      userInputDevice: freezed == userInputDevice
          ? _value.userInputDevice
          : userInputDevice // ignore: cast_nullable_to_non_nullable
              as String?,
      userInputColor: freezed == userInputColor
          ? _value.userInputColor
          : userInputColor // ignore: cast_nullable_to_non_nullable
              as String?,
      storage: freezed == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as DeviceStorageType?,
      telecomRequestType: freezed == telecomRequestType
          ? _value.telecomRequestType
          : telecomRequestType // ignore: cast_nullable_to_non_nullable
              as TelecomRequestType?,
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
abstract class _$$SpecRequestModelImplCopyWith<$Res>
    implements $SpecRequestModelCopyWith<$Res> {
  factory _$$SpecRequestModelImplCopyWith(_$SpecRequestModelImpl value,
          $Res Function(_$SpecRequestModelImpl) then) =
      __$$SpecRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'deviceColorRequestType')
      DeviceColorRequestType? deviceColorRequestType,
      @JsonKey(name: 'deviceIdx') int? deviceIdx,
      @JsonKey(name: 'deviceColorIdx') int? deviceColorIdx,
      @JsonKey(name: 'userInputDevice') String? userInputDevice,
      @JsonKey(name: 'userInputColor') String? userInputColor,
      @JsonKey(name: 'storage') DeviceStorageType? storage,
      @JsonKey(name: 'telecomRequestType')
      TelecomRequestType? telecomRequestType,
      @JsonKey(name: 'telecom') Telecom? telecom,
      @JsonKey(name: 'dataUsage') DataUsage? dataUsage});
}

/// @nodoc
class __$$SpecRequestModelImplCopyWithImpl<$Res>
    extends _$SpecRequestModelCopyWithImpl<$Res, _$SpecRequestModelImpl>
    implements _$$SpecRequestModelImplCopyWith<$Res> {
  __$$SpecRequestModelImplCopyWithImpl(_$SpecRequestModelImpl _value,
      $Res Function(_$SpecRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceColorRequestType = freezed,
    Object? deviceIdx = freezed,
    Object? deviceColorIdx = freezed,
    Object? userInputDevice = freezed,
    Object? userInputColor = freezed,
    Object? storage = freezed,
    Object? telecomRequestType = freezed,
    Object? telecom = freezed,
    Object? dataUsage = freezed,
  }) {
    return _then(_$SpecRequestModelImpl(
      deviceColorRequestType: freezed == deviceColorRequestType
          ? _value.deviceColorRequestType
          : deviceColorRequestType // ignore: cast_nullable_to_non_nullable
              as DeviceColorRequestType?,
      deviceIdx: freezed == deviceIdx
          ? _value.deviceIdx
          : deviceIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceColorIdx: freezed == deviceColorIdx
          ? _value.deviceColorIdx
          : deviceColorIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      userInputDevice: freezed == userInputDevice
          ? _value.userInputDevice
          : userInputDevice // ignore: cast_nullable_to_non_nullable
              as String?,
      userInputColor: freezed == userInputColor
          ? _value.userInputColor
          : userInputColor // ignore: cast_nullable_to_non_nullable
              as String?,
      storage: freezed == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as DeviceStorageType?,
      telecomRequestType: freezed == telecomRequestType
          ? _value.telecomRequestType
          : telecomRequestType // ignore: cast_nullable_to_non_nullable
              as TelecomRequestType?,
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
class _$SpecRequestModelImpl implements _SpecRequestModel {
  const _$SpecRequestModelImpl(
      {@JsonKey(name: 'deviceColorRequestType') this.deviceColorRequestType,
      @JsonKey(name: 'deviceIdx') this.deviceIdx,
      @JsonKey(name: 'deviceColorIdx') this.deviceColorIdx,
      @JsonKey(name: 'userInputDevice') this.userInputDevice,
      @JsonKey(name: 'userInputColor') this.userInputColor,
      @JsonKey(name: 'storage') this.storage,
      @JsonKey(name: 'telecomRequestType') this.telecomRequestType,
      @JsonKey(name: 'telecom') this.telecom,
      @JsonKey(name: 'dataUsage') this.dataUsage});

  factory _$SpecRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'deviceColorRequestType')
  final DeviceColorRequestType? deviceColorRequestType;
  @override
  @JsonKey(name: 'deviceIdx')
  final int? deviceIdx;
  @override
  @JsonKey(name: 'deviceColorIdx')
  final int? deviceColorIdx;
  @override
  @JsonKey(name: 'userInputDevice')
  final String? userInputDevice;
  @override
  @JsonKey(name: 'userInputColor')
  final String? userInputColor;
  @override
  @JsonKey(name: 'storage')
  final DeviceStorageType? storage;
  @override
  @JsonKey(name: 'telecomRequestType')
  final TelecomRequestType? telecomRequestType;
  @override
  @JsonKey(name: 'telecom')
  final Telecom? telecom;
  @override
  @JsonKey(name: 'dataUsage')
  final DataUsage? dataUsage;

  @override
  String toString() {
    return 'SpecRequestModel(deviceColorRequestType: $deviceColorRequestType, deviceIdx: $deviceIdx, deviceColorIdx: $deviceColorIdx, userInputDevice: $userInputDevice, userInputColor: $userInputColor, storage: $storage, telecomRequestType: $telecomRequestType, telecom: $telecom, dataUsage: $dataUsage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecRequestModelImpl &&
            const DeepCollectionEquality()
                .equals(other.deviceColorRequestType, deviceColorRequestType) &&
            (identical(other.deviceIdx, deviceIdx) ||
                other.deviceIdx == deviceIdx) &&
            (identical(other.deviceColorIdx, deviceColorIdx) ||
                other.deviceColorIdx == deviceColorIdx) &&
            (identical(other.userInputDevice, userInputDevice) ||
                other.userInputDevice == userInputDevice) &&
            (identical(other.userInputColor, userInputColor) ||
                other.userInputColor == userInputColor) &&
            (identical(other.storage, storage) || other.storage == storage) &&
            const DeepCollectionEquality()
                .equals(other.telecomRequestType, telecomRequestType) &&
            const DeepCollectionEquality().equals(other.telecom, telecom) &&
            const DeepCollectionEquality().equals(other.dataUsage, dataUsage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(deviceColorRequestType),
      deviceIdx,
      deviceColorIdx,
      userInputDevice,
      userInputColor,
      storage,
      const DeepCollectionEquality().hash(telecomRequestType),
      const DeepCollectionEquality().hash(telecom),
      const DeepCollectionEquality().hash(dataUsage));

  /// Create a copy of SpecRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecRequestModelImplCopyWith<_$SpecRequestModelImpl> get copyWith =>
      __$$SpecRequestModelImplCopyWithImpl<_$SpecRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SpecRequestModel implements SpecRequestModel {
  const factory _SpecRequestModel(
          {@JsonKey(name: 'deviceColorRequestType')
          final DeviceColorRequestType? deviceColorRequestType,
          @JsonKey(name: 'deviceIdx') final int? deviceIdx,
          @JsonKey(name: 'deviceColorIdx') final int? deviceColorIdx,
          @JsonKey(name: 'userInputDevice') final String? userInputDevice,
          @JsonKey(name: 'userInputColor') final String? userInputColor,
          @JsonKey(name: 'storage') final DeviceStorageType? storage,
          @JsonKey(name: 'telecomRequestType')
          final TelecomRequestType? telecomRequestType,
          @JsonKey(name: 'telecom') final Telecom? telecom,
          @JsonKey(name: 'dataUsage') final DataUsage? dataUsage}) =
      _$SpecRequestModelImpl;

  factory _SpecRequestModel.fromJson(Map<String, dynamic> json) =
      _$SpecRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'deviceColorRequestType')
  DeviceColorRequestType? get deviceColorRequestType;
  @override
  @JsonKey(name: 'deviceIdx')
  int? get deviceIdx;
  @override
  @JsonKey(name: 'deviceColorIdx')
  int? get deviceColorIdx;
  @override
  @JsonKey(name: 'userInputDevice')
  String? get userInputDevice;
  @override
  @JsonKey(name: 'userInputColor')
  String? get userInputColor;
  @override
  @JsonKey(name: 'storage')
  DeviceStorageType? get storage;
  @override
  @JsonKey(name: 'telecomRequestType')
  TelecomRequestType? get telecomRequestType;
  @override
  @JsonKey(name: 'telecom')
  Telecom? get telecom;
  @override
  @JsonKey(name: 'dataUsage')
  DataUsage? get dataUsage;

  /// Create a copy of SpecRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecRequestModelImplCopyWith<_$SpecRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
