// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeList {
  int get totalPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  List<Notice> get data => throw _privateConstructorUsedError;

  /// Create a copy of NoticeList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeListCopyWith<NoticeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeListCopyWith<$Res> {
  factory $NoticeListCopyWith(
          NoticeList value, $Res Function(NoticeList) then) =
      _$NoticeListCopyWithImpl<$Res, NoticeList>;
  @useResult
  $Res call(
      {int totalPage,
      int totalCount,
      int currentPage,
      int size,
      List<Notice> data});
}

/// @nodoc
class _$NoticeListCopyWithImpl<$Res, $Val extends NoticeList>
    implements $NoticeListCopyWith<$Res> {
  _$NoticeListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeList
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
              as List<Notice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticeListImplCopyWith<$Res>
    implements $NoticeListCopyWith<$Res> {
  factory _$$NoticeListImplCopyWith(
          _$NoticeListImpl value, $Res Function(_$NoticeListImpl) then) =
      __$$NoticeListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalPage,
      int totalCount,
      int currentPage,
      int size,
      List<Notice> data});
}

/// @nodoc
class __$$NoticeListImplCopyWithImpl<$Res>
    extends _$NoticeListCopyWithImpl<$Res, _$NoticeListImpl>
    implements _$$NoticeListImplCopyWith<$Res> {
  __$$NoticeListImplCopyWithImpl(
      _$NoticeListImpl _value, $Res Function(_$NoticeListImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeList
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
    return _then(_$NoticeListImpl(
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
              as List<Notice>,
    ));
  }
}

/// @nodoc

class _$NoticeListImpl implements _NoticeList {
  const _$NoticeListImpl(
      {required this.totalPage,
      required this.totalCount,
      required this.currentPage,
      required this.size,
      required final List<Notice> data})
      : _data = data;

  @override
  final int totalPage;
  @override
  final int totalCount;
  @override
  final int currentPage;
  @override
  final int size;
  final List<Notice> _data;
  @override
  List<Notice> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'NoticeList(totalPage: $totalPage, totalCount: $totalCount, currentPage: $currentPage, size: $size, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeListImpl &&
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

  /// Create a copy of NoticeList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeListImplCopyWith<_$NoticeListImpl> get copyWith =>
      __$$NoticeListImplCopyWithImpl<_$NoticeListImpl>(this, _$identity);
}

abstract class _NoticeList implements NoticeList {
  const factory _NoticeList(
      {required final int totalPage,
      required final int totalCount,
      required final int currentPage,
      required final int size,
      required final List<Notice> data}) = _$NoticeListImpl;

  @override
  int get totalPage;
  @override
  int get totalCount;
  @override
  int get currentPage;
  @override
  int get size;
  @override
  List<Notice> get data;

  /// Create a copy of NoticeList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeListImplCopyWith<_$NoticeListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
