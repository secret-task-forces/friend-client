// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeCategory {
  int get idx => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of NoticeCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeCategoryCopyWith<NoticeCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeCategoryCopyWith<$Res> {
  factory $NoticeCategoryCopyWith(
          NoticeCategory value, $Res Function(NoticeCategory) then) =
      _$NoticeCategoryCopyWithImpl<$Res, NoticeCategory>;
  @useResult
  $Res call({int idx, String name});
}

/// @nodoc
class _$NoticeCategoryCopyWithImpl<$Res, $Val extends NoticeCategory>
    implements $NoticeCategoryCopyWith<$Res> {
  _$NoticeCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeCategory
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
abstract class _$$NoticeCategoryImplCopyWith<$Res>
    implements $NoticeCategoryCopyWith<$Res> {
  factory _$$NoticeCategoryImplCopyWith(_$NoticeCategoryImpl value,
          $Res Function(_$NoticeCategoryImpl) then) =
      __$$NoticeCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idx, String name});
}

/// @nodoc
class __$$NoticeCategoryImplCopyWithImpl<$Res>
    extends _$NoticeCategoryCopyWithImpl<$Res, _$NoticeCategoryImpl>
    implements _$$NoticeCategoryImplCopyWith<$Res> {
  __$$NoticeCategoryImplCopyWithImpl(
      _$NoticeCategoryImpl _value, $Res Function(_$NoticeCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? name = null,
  }) {
    return _then(_$NoticeCategoryImpl(
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

class _$NoticeCategoryImpl extends _NoticeCategory {
  const _$NoticeCategoryImpl({required this.idx, required this.name})
      : super._();

  @override
  final int idx;
  @override
  final String name;

  @override
  String toString() {
    return 'NoticeCategory(idx: $idx, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeCategoryImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idx, name);

  /// Create a copy of NoticeCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeCategoryImplCopyWith<_$NoticeCategoryImpl> get copyWith =>
      __$$NoticeCategoryImplCopyWithImpl<_$NoticeCategoryImpl>(
          this, _$identity);
}

abstract class _NoticeCategory extends NoticeCategory {
  const factory _NoticeCategory(
      {required final int idx,
      required final String name}) = _$NoticeCategoryImpl;
  const _NoticeCategory._() : super._();

  @override
  int get idx;
  @override
  String get name;

  /// Create a copy of NoticeCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeCategoryImplCopyWith<_$NoticeCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
