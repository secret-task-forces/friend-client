// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) {
  return _DeviceModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceModel {
  @JsonKey(name: 'idx')
  int get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'model')
  String get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceType')
  String get deviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceStorageTypes')
  List<String> get deviceStorageTypes => throw _privateConstructorUsedError;

  /// Serializes this DeviceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceModelCopyWith<DeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceModelCopyWith<$Res> {
  factory $DeviceModelCopyWith(
          DeviceModel value, $Res Function(DeviceModel) then) =
      _$DeviceModelCopyWithImpl<$Res, DeviceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'model') String model,
      @JsonKey(name: 'deviceType') String deviceType,
      @JsonKey(name: 'deviceStorageTypes') List<String> deviceStorageTypes});
}

/// @nodoc
class _$DeviceModelCopyWithImpl<$Res, $Val extends DeviceModel>
    implements $DeviceModelCopyWith<$Res> {
  _$DeviceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceModel
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
              as String,
      deviceStorageTypes: null == deviceStorageTypes
          ? _value.deviceStorageTypes
          : deviceStorageTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceModelImplCopyWith<$Res>
    implements $DeviceModelCopyWith<$Res> {
  factory _$$DeviceModelImplCopyWith(
          _$DeviceModelImpl value, $Res Function(_$DeviceModelImpl) then) =
      __$$DeviceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'model') String model,
      @JsonKey(name: 'deviceType') String deviceType,
      @JsonKey(name: 'deviceStorageTypes') List<String> deviceStorageTypes});
}

/// @nodoc
class __$$DeviceModelImplCopyWithImpl<$Res>
    extends _$DeviceModelCopyWithImpl<$Res, _$DeviceModelImpl>
    implements _$$DeviceModelImplCopyWith<$Res> {
  __$$DeviceModelImplCopyWithImpl(
      _$DeviceModelImpl _value, $Res Function(_$DeviceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? model = null,
    Object? deviceType = null,
    Object? deviceStorageTypes = null,
  }) {
    return _then(_$DeviceModelImpl(
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
              as String,
      deviceStorageTypes: null == deviceStorageTypes
          ? _value._deviceStorageTypes
          : deviceStorageTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceModelImpl implements _DeviceModel {
  const _$DeviceModelImpl(
      {@JsonKey(name: 'idx') required this.idx,
      @JsonKey(name: 'model') required this.model,
      @JsonKey(name: 'deviceType') required this.deviceType,
      @JsonKey(name: 'deviceStorageTypes')
      required final List<String> deviceStorageTypes})
      : _deviceStorageTypes = deviceStorageTypes;

  factory _$DeviceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceModelImplFromJson(json);

  @override
  @JsonKey(name: 'idx')
  final int idx;
  @override
  @JsonKey(name: 'model')
  final String model;
  @override
  @JsonKey(name: 'deviceType')
  final String deviceType;
  final List<String> _deviceStorageTypes;
  @override
  @JsonKey(name: 'deviceStorageTypes')
  List<String> get deviceStorageTypes {
    if (_deviceStorageTypes is EqualUnmodifiableListView)
      return _deviceStorageTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deviceStorageTypes);
  }

  @override
  String toString() {
    return 'DeviceModel(idx: $idx, model: $model, deviceType: $deviceType, deviceStorageTypes: $deviceStorageTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceModelImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            const DeepCollectionEquality()
                .equals(other._deviceStorageTypes, _deviceStorageTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idx, model, deviceType,
      const DeepCollectionEquality().hash(_deviceStorageTypes));

  /// Create a copy of DeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceModelImplCopyWith<_$DeviceModelImpl> get copyWith =>
      __$$DeviceModelImplCopyWithImpl<_$DeviceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceModelImplToJson(
      this,
    );
  }
}

abstract class _DeviceModel implements DeviceModel {
  const factory _DeviceModel(
      {@JsonKey(name: 'idx') required final int idx,
      @JsonKey(name: 'model') required final String model,
      @JsonKey(name: 'deviceType') required final String deviceType,
      @JsonKey(name: 'deviceStorageTypes')
      required final List<String> deviceStorageTypes}) = _$DeviceModelImpl;

  factory _DeviceModel.fromJson(Map<String, dynamic> json) =
      _$DeviceModelImpl.fromJson;

  @override
  @JsonKey(name: 'idx')
  int get idx;
  @override
  @JsonKey(name: 'model')
  String get model;
  @override
  @JsonKey(name: 'deviceType')
  String get deviceType;
  @override
  @JsonKey(name: 'deviceStorageTypes')
  List<String> get deviceStorageTypes;

  /// Create a copy of DeviceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceModelImplCopyWith<_$DeviceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
