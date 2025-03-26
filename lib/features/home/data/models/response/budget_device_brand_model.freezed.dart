// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_device_brand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BudgetDeviceBrandModel _$BudgetDeviceBrandModelFromJson(
    Map<String, dynamic> json) {
  return _BudgetDeviceBrandModel.fromJson(json);
}

/// @nodoc
mixin _$BudgetDeviceBrandModel {
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Serializes this BudgetDeviceBrandModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BudgetDeviceBrandModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BudgetDeviceBrandModelCopyWith<BudgetDeviceBrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetDeviceBrandModelCopyWith<$Res> {
  factory $BudgetDeviceBrandModelCopyWith(BudgetDeviceBrandModel value,
          $Res Function(BudgetDeviceBrandModel) then) =
      _$BudgetDeviceBrandModelCopyWithImpl<$Res, BudgetDeviceBrandModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'value') String value,
      @JsonKey(name: 'title') String title});
}

/// @nodoc
class _$BudgetDeviceBrandModelCopyWithImpl<$Res,
        $Val extends BudgetDeviceBrandModel>
    implements $BudgetDeviceBrandModelCopyWith<$Res> {
  _$BudgetDeviceBrandModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetDeviceBrandModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BudgetDeviceBrandModelImplCopyWith<$Res>
    implements $BudgetDeviceBrandModelCopyWith<$Res> {
  factory _$$BudgetDeviceBrandModelImplCopyWith(
          _$BudgetDeviceBrandModelImpl value,
          $Res Function(_$BudgetDeviceBrandModelImpl) then) =
      __$$BudgetDeviceBrandModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'value') String value,
      @JsonKey(name: 'title') String title});
}

/// @nodoc
class __$$BudgetDeviceBrandModelImplCopyWithImpl<$Res>
    extends _$BudgetDeviceBrandModelCopyWithImpl<$Res,
        _$BudgetDeviceBrandModelImpl>
    implements _$$BudgetDeviceBrandModelImplCopyWith<$Res> {
  __$$BudgetDeviceBrandModelImplCopyWithImpl(
      _$BudgetDeviceBrandModelImpl _value,
      $Res Function(_$BudgetDeviceBrandModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetDeviceBrandModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? title = null,
  }) {
    return _then(_$BudgetDeviceBrandModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetDeviceBrandModelImpl implements _BudgetDeviceBrandModel {
  const _$BudgetDeviceBrandModelImpl(
      {@JsonKey(name: 'value') required this.value,
      @JsonKey(name: 'title') required this.title});

  factory _$BudgetDeviceBrandModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetDeviceBrandModelImplFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String value;
  @override
  @JsonKey(name: 'title')
  final String title;

  @override
  String toString() {
    return 'BudgetDeviceBrandModel(value: $value, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetDeviceBrandModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, title);

  /// Create a copy of BudgetDeviceBrandModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetDeviceBrandModelImplCopyWith<_$BudgetDeviceBrandModelImpl>
      get copyWith => __$$BudgetDeviceBrandModelImplCopyWithImpl<
          _$BudgetDeviceBrandModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetDeviceBrandModelImplToJson(
      this,
    );
  }
}

abstract class _BudgetDeviceBrandModel implements BudgetDeviceBrandModel {
  const factory _BudgetDeviceBrandModel(
          {@JsonKey(name: 'value') required final String value,
          @JsonKey(name: 'title') required final String title}) =
      _$BudgetDeviceBrandModelImpl;

  factory _BudgetDeviceBrandModel.fromJson(Map<String, dynamic> json) =
      _$BudgetDeviceBrandModelImpl.fromJson;

  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Create a copy of BudgetDeviceBrandModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetDeviceBrandModelImplCopyWith<_$BudgetDeviceBrandModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
