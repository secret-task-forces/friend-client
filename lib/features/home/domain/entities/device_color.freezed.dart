// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceColor {
  int get idx => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get fullImg => throw _privateConstructorUsedError;
  String get partialImg1 => throw _privateConstructorUsedError;

  /// Create a copy of DeviceColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceColorCopyWith<DeviceColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceColorCopyWith<$Res> {
  factory $DeviceColorCopyWith(
          DeviceColor value, $Res Function(DeviceColor) then) =
      _$DeviceColorCopyWithImpl<$Res, DeviceColor>;
  @useResult
  $Res call(
      {int idx, String name, String code, String fullImg, String partialImg1});
}

/// @nodoc
class _$DeviceColorCopyWithImpl<$Res, $Val extends DeviceColor>
    implements $DeviceColorCopyWith<$Res> {
  _$DeviceColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceColor
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
abstract class _$$DeviceColorImplCopyWith<$Res>
    implements $DeviceColorCopyWith<$Res> {
  factory _$$DeviceColorImplCopyWith(
          _$DeviceColorImpl value, $Res Function(_$DeviceColorImpl) then) =
      __$$DeviceColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx, String name, String code, String fullImg, String partialImg1});
}

/// @nodoc
class __$$DeviceColorImplCopyWithImpl<$Res>
    extends _$DeviceColorCopyWithImpl<$Res, _$DeviceColorImpl>
    implements _$$DeviceColorImplCopyWith<$Res> {
  __$$DeviceColorImplCopyWithImpl(
      _$DeviceColorImpl _value, $Res Function(_$DeviceColorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceColor
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
    return _then(_$DeviceColorImpl(
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

class _$DeviceColorImpl extends _DeviceColor with DiagnosticableTreeMixin {
  const _$DeviceColorImpl(
      {required this.idx,
      required this.name,
      required this.code,
      required this.fullImg,
      required this.partialImg1})
      : super._();

  @override
  final int idx;
  @override
  final String name;
  @override
  final String code;
  @override
  final String fullImg;
  @override
  final String partialImg1;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceColor(idx: $idx, name: $name, code: $code, fullImg: $fullImg, partialImg1: $partialImg1)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceColor'))
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
            other is _$DeviceColorImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.fullImg, fullImg) || other.fullImg == fullImg) &&
            (identical(other.partialImg1, partialImg1) ||
                other.partialImg1 == partialImg1));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, idx, name, code, fullImg, partialImg1);

  /// Create a copy of DeviceColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceColorImplCopyWith<_$DeviceColorImpl> get copyWith =>
      __$$DeviceColorImplCopyWithImpl<_$DeviceColorImpl>(this, _$identity);
}

abstract class _DeviceColor extends DeviceColor {
  const factory _DeviceColor(
      {required final int idx,
      required final String name,
      required final String code,
      required final String fullImg,
      required final String partialImg1}) = _$DeviceColorImpl;
  const _DeviceColor._() : super._();

  @override
  int get idx;
  @override
  String get name;
  @override
  String get code;
  @override
  String get fullImg;
  @override
  String get partialImg1;

  /// Create a copy of DeviceColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceColorImplCopyWith<_$DeviceColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
