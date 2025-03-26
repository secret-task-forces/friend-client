// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BranchReview {
  int get idx => throw _privateConstructorUsedError;
  int get userIdx => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of BranchReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchReviewCopyWith<BranchReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchReviewCopyWith<$Res> {
  factory $BranchReviewCopyWith(
          BranchReview value, $Res Function(BranchReview) then) =
      _$BranchReviewCopyWithImpl<$Res, BranchReview>;
  @useResult
  $Res call(
      {int idx,
      int userIdx,
      String userName,
      int rating,
      String comment,
      int createdAt});
}

/// @nodoc
class _$BranchReviewCopyWithImpl<$Res, $Val extends BranchReview>
    implements $BranchReviewCopyWith<$Res> {
  _$BranchReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? userIdx = null,
    Object? userName = null,
    Object? rating = null,
    Object? comment = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      userIdx: null == userIdx
          ? _value.userIdx
          : userIdx // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchReviewImplCopyWith<$Res>
    implements $BranchReviewCopyWith<$Res> {
  factory _$$BranchReviewImplCopyWith(
          _$BranchReviewImpl value, $Res Function(_$BranchReviewImpl) then) =
      __$$BranchReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx,
      int userIdx,
      String userName,
      int rating,
      String comment,
      int createdAt});
}

/// @nodoc
class __$$BranchReviewImplCopyWithImpl<$Res>
    extends _$BranchReviewCopyWithImpl<$Res, _$BranchReviewImpl>
    implements _$$BranchReviewImplCopyWith<$Res> {
  __$$BranchReviewImplCopyWithImpl(
      _$BranchReviewImpl _value, $Res Function(_$BranchReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? userIdx = null,
    Object? userName = null,
    Object? rating = null,
    Object? comment = null,
    Object? createdAt = null,
  }) {
    return _then(_$BranchReviewImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      userIdx: null == userIdx
          ? _value.userIdx
          : userIdx // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BranchReviewImpl extends _BranchReview with DiagnosticableTreeMixin {
  const _$BranchReviewImpl(
      {required this.idx,
      required this.userIdx,
      required this.userName,
      required this.rating,
      required this.comment,
      required this.createdAt})
      : super._();

  @override
  final int idx;
  @override
  final int userIdx;
  @override
  final String userName;
  @override
  final int rating;
  @override
  final String comment;
  @override
  final int createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BranchReview(idx: $idx, userIdx: $userIdx, userName: $userName, rating: $rating, comment: $comment, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BranchReview'))
      ..add(DiagnosticsProperty('idx', idx))
      ..add(DiagnosticsProperty('userIdx', userIdx))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchReviewImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.userIdx, userIdx) || other.userIdx == userIdx) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, idx, userIdx, userName, rating, comment, createdAt);

  /// Create a copy of BranchReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchReviewImplCopyWith<_$BranchReviewImpl> get copyWith =>
      __$$BranchReviewImplCopyWithImpl<_$BranchReviewImpl>(this, _$identity);
}

abstract class _BranchReview extends BranchReview {
  const factory _BranchReview(
      {required final int idx,
      required final int userIdx,
      required final String userName,
      required final int rating,
      required final String comment,
      required final int createdAt}) = _$BranchReviewImpl;
  const _BranchReview._() : super._();

  @override
  int get idx;
  @override
  int get userIdx;
  @override
  String get userName;
  @override
  int get rating;
  @override
  String get comment;
  @override
  int get createdAt;

  /// Create a copy of BranchReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchReviewImplCopyWith<_$BranchReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
