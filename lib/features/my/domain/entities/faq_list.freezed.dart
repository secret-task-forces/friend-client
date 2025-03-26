// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FaqList {
  int get totalPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  List<Faq> get data => throw _privateConstructorUsedError;

  /// Create a copy of FaqList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqListCopyWith<FaqList> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqListCopyWith<$Res> {
  factory $FaqListCopyWith(FaqList value, $Res Function(FaqList) then) =
      _$FaqListCopyWithImpl<$Res, FaqList>;
  @useResult
  $Res call(
      {int totalPage,
      int totalCount,
      int currentPage,
      int size,
      List<Faq> data});
}

/// @nodoc
class _$FaqListCopyWithImpl<$Res, $Val extends FaqList>
    implements $FaqListCopyWith<$Res> {
  _$FaqListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPage = null,
    Object? totalCount = null,
    Object? currentPage = null,
    Object? size = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Faq>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqListImplCopyWith<$Res> implements $FaqListCopyWith<$Res> {
  factory _$$FaqListImplCopyWith(
          _$FaqListImpl value, $Res Function(_$FaqListImpl) then) =
      __$$FaqListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalPage,
      int totalCount,
      int currentPage,
      int size,
      List<Faq> data});
}

/// @nodoc
class __$$FaqListImplCopyWithImpl<$Res>
    extends _$FaqListCopyWithImpl<$Res, _$FaqListImpl>
    implements _$$FaqListImplCopyWith<$Res> {
  __$$FaqListImplCopyWithImpl(
      _$FaqListImpl _value, $Res Function(_$FaqListImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPage = null,
    Object? totalCount = null,
    Object? currentPage = null,
    Object? size = null,
    Object? data = null,
  }) {
    return _then(_$FaqListImpl(
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Faq>,
    ));
  }
}

/// @nodoc

class _$FaqListImpl extends _FaqList {
  const _$FaqListImpl(
      {required this.totalPage,
      required this.totalCount,
      required this.currentPage,
      required this.size,
      required final List<Faq> data})
      : _data = data,
        super._();

  @override
  final int totalPage;
  @override
  final int totalCount;
  @override
  final int currentPage;
  @override
  final int size;
  final List<Faq> _data;
  @override
  List<Faq> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FaqList(totalPage: $totalPage, totalCount: $totalCount, currentPage: $currentPage, size: $size, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqListImpl &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalPage, totalCount,
      currentPage, size, const DeepCollectionEquality().hash(_data));

  /// Create a copy of FaqList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqListImplCopyWith<_$FaqListImpl> get copyWith =>
      __$$FaqListImplCopyWithImpl<_$FaqListImpl>(this, _$identity);
}

abstract class _FaqList extends FaqList {
  const factory _FaqList(
      {required final int totalPage,
      required final int totalCount,
      required final int currentPage,
      required final int size,
      required final List<Faq> data}) = _$FaqListImpl;
  const _FaqList._() : super._();

  @override
  int get totalPage;
  @override
  int get totalCount;
  @override
  int get currentPage;
  @override
  int get size;
  @override
  List<Faq> get data;

  /// Create a copy of FaqList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqListImplCopyWith<_$FaqListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
