// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuoteRequest {
  int get idx => throw _privateConstructorUsedError;
  int get exprAt => throw _privateConstructorUsedError;
  String? get devicePartialImg1 => throw _privateConstructorUsedError;
  String? get deviceFullImg => throw _privateConstructorUsedError;
  int get offerCount => throw _privateConstructorUsedError;
  DeviceType get deviceType => throw _privateConstructorUsedError;

  /// Create a copy of QuoteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuoteRequestCopyWith<QuoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteRequestCopyWith<$Res> {
  factory $QuoteRequestCopyWith(
          QuoteRequest value, $Res Function(QuoteRequest) then) =
      _$QuoteRequestCopyWithImpl<$Res, QuoteRequest>;
  @useResult
  $Res call(
      {int idx,
      int exprAt,
      String? devicePartialImg1,
      String? deviceFullImg,
      int offerCount,
      DeviceType deviceType});
}

/// @nodoc
class _$QuoteRequestCopyWithImpl<$Res, $Val extends QuoteRequest>
    implements $QuoteRequestCopyWith<$Res> {
  _$QuoteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuoteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? exprAt = null,
    Object? devicePartialImg1 = freezed,
    Object? deviceFullImg = freezed,
    Object? offerCount = null,
    Object? deviceType = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      exprAt: null == exprAt
          ? _value.exprAt
          : exprAt // ignore: cast_nullable_to_non_nullable
              as int,
      devicePartialImg1: freezed == devicePartialImg1
          ? _value.devicePartialImg1
          : devicePartialImg1 // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceFullImg: freezed == deviceFullImg
          ? _value.deviceFullImg
          : deviceFullImg // ignore: cast_nullable_to_non_nullable
              as String?,
      offerCount: null == offerCount
          ? _value.offerCount
          : offerCount // ignore: cast_nullable_to_non_nullable
              as int,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteRequestImplCopyWith<$Res>
    implements $QuoteRequestCopyWith<$Res> {
  factory _$$QuoteRequestImplCopyWith(
          _$QuoteRequestImpl value, $Res Function(_$QuoteRequestImpl) then) =
      __$$QuoteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx,
      int exprAt,
      String? devicePartialImg1,
      String? deviceFullImg,
      int offerCount,
      DeviceType deviceType});
}

/// @nodoc
class __$$QuoteRequestImplCopyWithImpl<$Res>
    extends _$QuoteRequestCopyWithImpl<$Res, _$QuoteRequestImpl>
    implements _$$QuoteRequestImplCopyWith<$Res> {
  __$$QuoteRequestImplCopyWithImpl(
      _$QuoteRequestImpl _value, $Res Function(_$QuoteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuoteRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? exprAt = null,
    Object? devicePartialImg1 = freezed,
    Object? deviceFullImg = freezed,
    Object? offerCount = null,
    Object? deviceType = null,
  }) {
    return _then(_$QuoteRequestImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      exprAt: null == exprAt
          ? _value.exprAt
          : exprAt // ignore: cast_nullable_to_non_nullable
              as int,
      devicePartialImg1: freezed == devicePartialImg1
          ? _value.devicePartialImg1
          : devicePartialImg1 // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceFullImg: freezed == deviceFullImg
          ? _value.deviceFullImg
          : deviceFullImg // ignore: cast_nullable_to_non_nullable
              as String?,
      offerCount: null == offerCount
          ? _value.offerCount
          : offerCount // ignore: cast_nullable_to_non_nullable
              as int,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceType,
    ));
  }
}

/// @nodoc

class _$QuoteRequestImpl extends _QuoteRequest {
  const _$QuoteRequestImpl(
      {required this.idx,
      required this.exprAt,
      this.devicePartialImg1,
      this.deviceFullImg,
      required this.offerCount,
      required this.deviceType})
      : super._();

  @override
  final int idx;
  @override
  final int exprAt;
  @override
  final String? devicePartialImg1;
  @override
  final String? deviceFullImg;
  @override
  final int offerCount;
  @override
  final DeviceType deviceType;

  @override
  String toString() {
    return 'QuoteRequest(idx: $idx, exprAt: $exprAt, devicePartialImg1: $devicePartialImg1, deviceFullImg: $deviceFullImg, offerCount: $offerCount, deviceType: $deviceType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteRequestImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.exprAt, exprAt) || other.exprAt == exprAt) &&
            (identical(other.devicePartialImg1, devicePartialImg1) ||
                other.devicePartialImg1 == devicePartialImg1) &&
            (identical(other.deviceFullImg, deviceFullImg) ||
                other.deviceFullImg == deviceFullImg) &&
            (identical(other.offerCount, offerCount) ||
                other.offerCount == offerCount) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idx, exprAt, devicePartialImg1,
      deviceFullImg, offerCount, deviceType);

  /// Create a copy of QuoteRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteRequestImplCopyWith<_$QuoteRequestImpl> get copyWith =>
      __$$QuoteRequestImplCopyWithImpl<_$QuoteRequestImpl>(this, _$identity);
}

abstract class _QuoteRequest extends QuoteRequest {
  const factory _QuoteRequest(
      {required final int idx,
      required final int exprAt,
      final String? devicePartialImg1,
      final String? deviceFullImg,
      required final int offerCount,
      required final DeviceType deviceType}) = _$QuoteRequestImpl;
  const _QuoteRequest._() : super._();

  @override
  int get idx;
  @override
  int get exprAt;
  @override
  String? get devicePartialImg1;
  @override
  String? get deviceFullImg;
  @override
  int get offerCount;
  @override
  DeviceType get deviceType;

  /// Create a copy of QuoteRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuoteRequestImplCopyWith<_$QuoteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
