// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceColorModel _$DeviceColorModelFromJson(Map<String, dynamic> json) {
  return _DeviceColorModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceColorModel {
  @JsonKey(name: 'idx')
  int get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullImg')
  String get fullImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'partialImg1')
  String get partialImg1 => throw _privateConstructorUsedError;

  /// Serializes this DeviceColorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceColorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceColorModelCopyWith<DeviceColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceColorModelCopyWith<$Res> {
  factory $DeviceColorModelCopyWith(
          DeviceColorModel value, $Res Function(DeviceColorModel) then) =
      _$DeviceColorModelCopyWithImpl<$Res, DeviceColorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'fullImg') String fullImg,
      @JsonKey(name: 'partialImg1') String partialImg1});
}

/// @nodoc
class _$DeviceColorModelCopyWithImpl<$Res, $Val extends DeviceColorModel>
    implements $DeviceColorModelCopyWith<$Res> {
  _$DeviceColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceColorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? name = null,
    Object? code = null,
    Object? fullImg = null,
    Object? partialImg1 = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      fullImg: null == fullImg
          ? _value.fullImg
          : fullImg // ignore: cast_nullable_to_non_nullable
              as String,
      partialImg1: null == partialImg1
          ? _value.partialImg1
          : partialImg1 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceColorModelImplCopyWith<$Res>
    implements $DeviceColorModelCopyWith<$Res> {
  factory _$$DeviceColorModelImplCopyWith(_$DeviceColorModelImpl value,
          $Res Function(_$DeviceColorModelImpl) then) =
      __$$DeviceColorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'fullImg') String fullImg,
      @JsonKey(name: 'partialImg1') String partialImg1});
}

/// @nodoc
class __$$DeviceColorModelImplCopyWithImpl<$Res>
    extends _$DeviceColorModelCopyWithImpl<$Res, _$DeviceColorModelImpl>
    implements _$$DeviceColorModelImplCopyWith<$Res> {
  __$$DeviceColorModelImplCopyWithImpl(_$DeviceColorModelImpl _value,
      $Res Function(_$DeviceColorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceColorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? name = null,
    Object? code = null,
    Object? fullImg = null,
    Object? partialImg1 = null,
  }) {
    return _then(_$DeviceColorModelImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      fullImg: null == fullImg
          ? _value.fullImg
          : fullImg // ignore: cast_nullable_to_non_nullable
              as String,
      partialImg1: null == partialImg1
          ? _value.partialImg1
          : partialImg1 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceColorModelImpl
    with DiagnosticableTreeMixin
    implements _DeviceColorModel {
  const _$DeviceColorModelImpl(
      {@JsonKey(name: 'idx') required this.idx,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'fullImg') required this.fullImg,
      @JsonKey(name: 'partialImg1') required this.partialImg1});

  factory _$DeviceColorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceColorModelImplFromJson(json);

  @override
  @JsonKey(name: 'idx')
  final int idx;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'fullImg')
  final String fullImg;
  @override
  @JsonKey(name: 'partialImg1')
  final String partialImg1;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceColorModel(idx: $idx, name: $name, code: $code, fullImg: $fullImg, partialImg1: $partialImg1)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceColorModel'))
      ..add(DiagnosticsProperty('idx', idx))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('fullImg', fullImg))
      ..add(DiagnosticsProperty('partialImg1', partialImg1));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceColorModelImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.fullImg, fullImg) || other.fullImg == fullImg) &&
            (identical(other.partialImg1, partialImg1) ||
                other.partialImg1 == partialImg1));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idx, name, code, fullImg, partialImg1);

  /// Create a copy of DeviceColorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceColorModelImplCopyWith<_$DeviceColorModelImpl> get copyWith =>
      __$$DeviceColorModelImplCopyWithImpl<_$DeviceColorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceColorModelImplToJson(
      this,
    );
  }
}

abstract class _DeviceColorModel implements DeviceColorModel {
  const factory _DeviceColorModel(
          {@JsonKey(name: 'idx') required final int idx,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'code') required final String code,
          @JsonKey(name: 'fullImg') required final String fullImg,
          @JsonKey(name: 'partialImg1') required final String partialImg1}) =
      _$DeviceColorModelImpl;

  factory _DeviceColorModel.fromJson(Map<String, dynamic> json) =
      _$DeviceColorModelImpl.fromJson;

  @override
  @JsonKey(name: 'idx')
  int get idx;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'fullImg')
  String get fullImg;
  @override
  @JsonKey(name: 'partialImg1')
  String get partialImg1;

  /// Create a copy of DeviceColorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceColorModelImplCopyWith<_$DeviceColorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
