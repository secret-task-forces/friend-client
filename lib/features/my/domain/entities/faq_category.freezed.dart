// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FaqCategory {
  int get idx => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of FaqCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqCategoryCopyWith<FaqCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqCategoryCopyWith<$Res> {
  factory $FaqCategoryCopyWith(
          FaqCategory value, $Res Function(FaqCategory) then) =
      _$FaqCategoryCopyWithImpl<$Res, FaqCategory>;
  @useResult
  $Res call({int idx, String name});
}

/// @nodoc
class _$FaqCategoryCopyWithImpl<$Res, $Val extends FaqCategory>
    implements $FaqCategoryCopyWith<$Res> {
  _$FaqCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqCategoryImplCopyWith<$Res>
    implements $FaqCategoryCopyWith<$Res> {
  factory _$$FaqCategoryImplCopyWith(
          _$FaqCategoryImpl value, $Res Function(_$FaqCategoryImpl) then) =
      __$$FaqCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idx, String name});
}

/// @nodoc
class __$$FaqCategoryImplCopyWithImpl<$Res>
    extends _$FaqCategoryCopyWithImpl<$Res, _$FaqCategoryImpl>
    implements _$$FaqCategoryImplCopyWith<$Res> {
  __$$FaqCategoryImplCopyWithImpl(
      _$FaqCategoryImpl _value, $Res Function(_$FaqCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? name = null,
  }) {
    return _then(_$FaqCategoryImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FaqCategoryImpl extends _FaqCategory {
  const _$FaqCategoryImpl({required this.idx, required this.name}) : super._();

  @override
  final int idx;
  @override
  final String name;

  @override
  String toString() {
    return 'FaqCategory(idx: $idx, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqCategoryImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idx, name);

  /// Create a copy of FaqCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqCategoryImplCopyWith<_$FaqCategoryImpl> get copyWith =>
      __$$FaqCategoryImplCopyWithImpl<_$FaqCategoryImpl>(this, _$identity);
}

abstract class _FaqCategory extends FaqCategory {
  const factory _FaqCategory(
      {required final int idx, required final String name}) = _$FaqCategoryImpl;
  const _FaqCategory._() : super._();

  @override
  int get idx;
  @override
  String get name;

  /// Create a copy of FaqCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqCategoryImplCopyWith<_$FaqCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
