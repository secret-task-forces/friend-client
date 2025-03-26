// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuoteRequestModel _$QuoteRequestModelFromJson(Map<String, dynamic> json) {
  return _QuoteRequestModel.fromJson(json);
}

/// @nodoc
mixin _$QuoteRequestModel {
  @JsonKey(name: 'idx')
  int get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'exprAt')
  int get exprAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'devicePartialImg1')
  String? get devicePartialImg1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceFullImg')
  String? get deviceFullImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'offerCount')
  int get offerCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'dtype')
  String get dtype => throw _privateConstructorUsedError;

  /// Serializes this QuoteRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuoteRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuoteRequestModelCopyWith<QuoteRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteRequestModelCopyWith<$Res> {
  factory $QuoteRequestModelCopyWith(
          QuoteRequestModel value, $Res Function(QuoteRequestModel) then) =
      _$QuoteRequestModelCopyWithImpl<$Res, QuoteRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'exprAt') int exprAt,
      @JsonKey(name: 'devicePartialImg1') String? devicePartialImg1,
      @JsonKey(name: 'deviceFullImg') String? deviceFullImg,
      @JsonKey(name: 'offerCount') int offerCount,
      @JsonKey(name: 'dtype') String dtype});
}

/// @nodoc
class _$QuoteRequestModelCopyWithImpl<$Res, $Val extends QuoteRequestModel>
    implements $QuoteRequestModelCopyWith<$Res> {
  _$QuoteRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuoteRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? exprAt = null,
    Object? devicePartialImg1 = freezed,
    Object? deviceFullImg = freezed,
    Object? offerCount = null,
    Object? dtype = null,
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
      dtype: null == dtype
          ? _value.dtype
          : dtype // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteRequestModelImplCopyWith<$Res>
    implements $QuoteRequestModelCopyWith<$Res> {
  factory _$$QuoteRequestModelImplCopyWith(_$QuoteRequestModelImpl value,
          $Res Function(_$QuoteRequestModelImpl) then) =
      __$$QuoteRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'exprAt') int exprAt,
      @JsonKey(name: 'devicePartialImg1') String? devicePartialImg1,
      @JsonKey(name: 'deviceFullImg') String? deviceFullImg,
      @JsonKey(name: 'offerCount') int offerCount,
      @JsonKey(name: 'dtype') String dtype});
}

/// @nodoc
class __$$QuoteRequestModelImplCopyWithImpl<$Res>
    extends _$QuoteRequestModelCopyWithImpl<$Res, _$QuoteRequestModelImpl>
    implements _$$QuoteRequestModelImplCopyWith<$Res> {
  __$$QuoteRequestModelImplCopyWithImpl(_$QuoteRequestModelImpl _value,
      $Res Function(_$QuoteRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuoteRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? exprAt = null,
    Object? devicePartialImg1 = freezed,
    Object? deviceFullImg = freezed,
    Object? offerCount = null,
    Object? dtype = null,
  }) {
    return _then(_$QuoteRequestModelImpl(
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
      dtype: null == dtype
          ? _value.dtype
          : dtype // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuoteRequestModelImpl implements _QuoteRequestModel {
  const _$QuoteRequestModelImpl(
      {@JsonKey(name: 'idx') required this.idx,
      @JsonKey(name: 'exprAt') required this.exprAt,
      @JsonKey(name: 'devicePartialImg1') this.devicePartialImg1,
      @JsonKey(name: 'deviceFullImg') this.deviceFullImg,
      @JsonKey(name: 'offerCount') required this.offerCount,
      @JsonKey(name: 'dtype') required this.dtype});

  factory _$QuoteRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'idx')
  final int idx;
  @override
  @JsonKey(name: 'exprAt')
  final int exprAt;
  @override
  @JsonKey(name: 'devicePartialImg1')
  final String? devicePartialImg1;
  @override
  @JsonKey(name: 'deviceFullImg')
  final String? deviceFullImg;
  @override
  @JsonKey(name: 'offerCount')
  final int offerCount;
  @override
  @JsonKey(name: 'dtype')
  final String dtype;

  @override
  String toString() {
    return 'QuoteRequestModel(idx: $idx, exprAt: $exprAt, devicePartialImg1: $devicePartialImg1, deviceFullImg: $deviceFullImg, offerCount: $offerCount, dtype: $dtype)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteRequestModelImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.exprAt, exprAt) || other.exprAt == exprAt) &&
            (identical(other.devicePartialImg1, devicePartialImg1) ||
                other.devicePartialImg1 == devicePartialImg1) &&
            (identical(other.deviceFullImg, deviceFullImg) ||
                other.deviceFullImg == deviceFullImg) &&
            (identical(other.offerCount, offerCount) ||
                other.offerCount == offerCount) &&
            (identical(other.dtype, dtype) || other.dtype == dtype));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idx, exprAt, devicePartialImg1,
      deviceFullImg, offerCount, dtype);

  /// Create a copy of QuoteRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteRequestModelImplCopyWith<_$QuoteRequestModelImpl> get copyWith =>
      __$$QuoteRequestModelImplCopyWithImpl<_$QuoteRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteRequestModelImplToJson(
      this,
    );
  }
}

abstract class _QuoteRequestModel implements QuoteRequestModel {
  const factory _QuoteRequestModel(
          {@JsonKey(name: 'idx') required final int idx,
          @JsonKey(name: 'exprAt') required final int exprAt,
          @JsonKey(name: 'devicePartialImg1') final String? devicePartialImg1,
          @JsonKey(name: 'deviceFullImg') final String? deviceFullImg,
          @JsonKey(name: 'offerCount') required final int offerCount,
          @JsonKey(name: 'dtype') required final String dtype}) =
      _$QuoteRequestModelImpl;

  factory _QuoteRequestModel.fromJson(Map<String, dynamic> json) =
      _$QuoteRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'idx')
  int get idx;
  @override
  @JsonKey(name: 'exprAt')
  int get exprAt;
  @override
  @JsonKey(name: 'devicePartialImg1')
  String? get devicePartialImg1;
  @override
  @JsonKey(name: 'deviceFullImg')
  String? get deviceFullImg;
  @override
  @JsonKey(name: 'offerCount')
  int get offerCount;
  @override
  @JsonKey(name: 'dtype')
  String get dtype;

  /// Create a copy of QuoteRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuoteRequestModelImplCopyWith<_$QuoteRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
