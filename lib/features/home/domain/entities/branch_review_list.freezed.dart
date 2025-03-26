// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_review_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BranchReviewList {
  int get totalPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  List<BranchReview> get data => throw _privateConstructorUsedError;

  /// Create a copy of BranchReviewList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchReviewListCopyWith<BranchReviewList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchReviewListCopyWith<$Res> {
  factory $BranchReviewListCopyWith(
          BranchReviewList value, $Res Function(BranchReviewList) then) =
      _$BranchReviewListCopyWithImpl<$Res, BranchReviewList>;
  @useResult
  $Res call(
      {int totalPage,
      int totalCount,
      int currentPage,
      int size,
      List<BranchReview> data});
}

/// @nodoc
class _$BranchReviewListCopyWithImpl<$Res, $Val extends BranchReviewList>
    implements $BranchReviewListCopyWith<$Res> {
  _$BranchReviewListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchReviewList
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
              as List<BranchReview>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchReviewListImplCopyWith<$Res>
    implements $BranchReviewListCopyWith<$Res> {
  factory _$$BranchReviewListImplCopyWith(_$BranchReviewListImpl value,
          $Res Function(_$BranchReviewListImpl) then) =
      __$$BranchReviewListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalPage,
      int totalCount,
      int currentPage,
      int size,
      List<BranchReview> data});
}

/// @nodoc
class __$$BranchReviewListImplCopyWithImpl<$Res>
    extends _$BranchReviewListCopyWithImpl<$Res, _$BranchReviewListImpl>
    implements _$$BranchReviewListImplCopyWith<$Res> {
  __$$BranchReviewListImplCopyWithImpl(_$BranchReviewListImpl _value,
      $Res Function(_$BranchReviewListImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchReviewList
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
    return _then(_$BranchReviewListImpl(
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
              as List<BranchReview>,
    ));
  }
}

/// @nodoc

class _$BranchReviewListImpl extends _BranchReviewList
    with DiagnosticableTreeMixin {
  const _$BranchReviewListImpl(
      {required this.totalPage,
      required this.totalCount,
      required this.currentPage,
      required this.size,
      required final List<BranchReview> data})
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
  final List<BranchReview> _data;
  @override
  List<BranchReview> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BranchReviewList(totalPage: $totalPage, totalCount: $totalCount, currentPage: $currentPage, size: $size, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BranchReviewList'))
      ..add(DiagnosticsProperty('totalPage', totalPage))
      ..add(DiagnosticsProperty('totalCount', totalCount))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchReviewListImpl &&
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

  /// Create a copy of BranchReviewList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchReviewListImplCopyWith<_$BranchReviewListImpl> get copyWith =>
      __$$BranchReviewListImplCopyWithImpl<_$BranchReviewListImpl>(
          this, _$identity);
}

abstract class _BranchReviewList extends BranchReviewList {
  const factory _BranchReviewList(
      {required final int totalPage,
      required final int totalCount,
      required final int currentPage,
      required final int size,
      required final List<BranchReview> data}) = _$BranchReviewListImpl;
  const _BranchReviewList._() : super._();

  @override
  int get totalPage;
  @override
  int get totalCount;
  @override
  int get currentPage;
  @override
  int get size;
  @override
  List<BranchReview> get data;

  /// Create a copy of BranchReviewList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchReviewListImplCopyWith<_$BranchReviewListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
