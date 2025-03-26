// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_device_brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BudgetDeviceBrand {
  BudgetDeviceType get value => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Create a copy of BudgetDeviceBrand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BudgetDeviceBrandCopyWith<BudgetDeviceBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetDeviceBrandCopyWith<$Res> {
  factory $BudgetDeviceBrandCopyWith(
          BudgetDeviceBrand value, $Res Function(BudgetDeviceBrand) then) =
      _$BudgetDeviceBrandCopyWithImpl<$Res, BudgetDeviceBrand>;
  @useResult
  $Res call({BudgetDeviceType value, String title});
}

/// @nodoc
class _$BudgetDeviceBrandCopyWithImpl<$Res, $Val extends BudgetDeviceBrand>
    implements $BudgetDeviceBrandCopyWith<$Res> {
  _$BudgetDeviceBrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetDeviceBrand
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
              as BudgetDeviceType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BudgetDeviceBrandImplCopyWith<$Res>
    implements $BudgetDeviceBrandCopyWith<$Res> {
  factory _$$BudgetDeviceBrandImplCopyWith(_$BudgetDeviceBrandImpl value,
          $Res Function(_$BudgetDeviceBrandImpl) then) =
      __$$BudgetDeviceBrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BudgetDeviceType value, String title});
}

/// @nodoc
class __$$BudgetDeviceBrandImplCopyWithImpl<$Res>
    extends _$BudgetDeviceBrandCopyWithImpl<$Res, _$BudgetDeviceBrandImpl>
    implements _$$BudgetDeviceBrandImplCopyWith<$Res> {
  __$$BudgetDeviceBrandImplCopyWithImpl(_$BudgetDeviceBrandImpl _value,
      $Res Function(_$BudgetDeviceBrandImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetDeviceBrand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? title = null,
  }) {
    return _then(_$BudgetDeviceBrandImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BudgetDeviceType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BudgetDeviceBrandImpl extends _BudgetDeviceBrand {
  const _$BudgetDeviceBrandImpl({required this.value, required this.title})
      : super._();

  @override
  final BudgetDeviceType value;
  @override
  final String title;

  @override
  String toString() {
    return 'BudgetDeviceBrand(value: $value, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetDeviceBrandImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, title);

  /// Create a copy of BudgetDeviceBrand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetDeviceBrandImplCopyWith<_$BudgetDeviceBrandImpl> get copyWith =>
      __$$BudgetDeviceBrandImplCopyWithImpl<_$BudgetDeviceBrandImpl>(
          this, _$identity);
}

abstract class _BudgetDeviceBrand extends BudgetDeviceBrand {
  const factory _BudgetDeviceBrand(
      {required final BudgetDeviceType value,
      required final String title}) = _$BudgetDeviceBrandImpl;
  const _BudgetDeviceBrand._() : super._();

  @override
  BudgetDeviceType get value;
  @override
  String get title;

  /// Create a copy of BudgetDeviceBrand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetDeviceBrandImplCopyWith<_$BudgetDeviceBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
