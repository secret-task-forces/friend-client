// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_branch_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WriteBranchReviewModel _$WriteBranchReviewModelFromJson(
    Map<String, dynamic> json) {
  return _WriteBranchReviewModel.fromJson(json);
}

/// @nodoc
mixin _$WriteBranchReviewModel {
  @JsonKey(name: 'rating')
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String get comment => throw _privateConstructorUsedError;

  /// Serializes this WriteBranchReviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WriteBranchReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WriteBranchReviewModelCopyWith<WriteBranchReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteBranchReviewModelCopyWith<$Res> {
  factory $WriteBranchReviewModelCopyWith(WriteBranchReviewModel value,
          $Res Function(WriteBranchReviewModel) then) =
      _$WriteBranchReviewModelCopyWithImpl<$Res, WriteBranchReviewModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'rating') int rating,
      @JsonKey(name: 'comment') String comment});
}

/// @nodoc
class _$WriteBranchReviewModelCopyWithImpl<$Res,
        $Val extends WriteBranchReviewModel>
    implements $WriteBranchReviewModelCopyWith<$Res> {
  _$WriteBranchReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WriteBranchReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WriteBranchReviewModelImplCopyWith<$Res>
    implements $WriteBranchReviewModelCopyWith<$Res> {
  factory _$$WriteBranchReviewModelImplCopyWith(
          _$WriteBranchReviewModelImpl value,
          $Res Function(_$WriteBranchReviewModelImpl) then) =
      __$$WriteBranchReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'rating') int rating,
      @JsonKey(name: 'comment') String comment});
}

/// @nodoc
class __$$WriteBranchReviewModelImplCopyWithImpl<$Res>
    extends _$WriteBranchReviewModelCopyWithImpl<$Res,
        _$WriteBranchReviewModelImpl>
    implements _$$WriteBranchReviewModelImplCopyWith<$Res> {
  __$$WriteBranchReviewModelImplCopyWithImpl(
      _$WriteBranchReviewModelImpl _value,
      $Res Function(_$WriteBranchReviewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WriteBranchReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = null,
  }) {
    return _then(_$WriteBranchReviewModelImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WriteBranchReviewModelImpl
    with DiagnosticableTreeMixin
    implements _WriteBranchReviewModel {
  const _$WriteBranchReviewModelImpl(
      {@JsonKey(name: 'rating') required this.rating,
      @JsonKey(name: 'comment') required this.comment});

  factory _$WriteBranchReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WriteBranchReviewModelImplFromJson(json);

  @override
  @JsonKey(name: 'rating')
  final int rating;
  @override
  @JsonKey(name: 'comment')
  final String comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WriteBranchReviewModel(rating: $rating, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WriteBranchReviewModel'))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteBranchReviewModelImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating, comment);

  /// Create a copy of WriteBranchReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteBranchReviewModelImplCopyWith<_$WriteBranchReviewModelImpl>
      get copyWith => __$$WriteBranchReviewModelImplCopyWithImpl<
          _$WriteBranchReviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WriteBranchReviewModelImplToJson(
      this,
    );
  }
}

abstract class _WriteBranchReviewModel implements WriteBranchReviewModel {
  const factory _WriteBranchReviewModel(
          {@JsonKey(name: 'rating') required final int rating,
          @JsonKey(name: 'comment') required final String comment}) =
      _$WriteBranchReviewModelImpl;

  factory _WriteBranchReviewModel.fromJson(Map<String, dynamic> json) =
      _$WriteBranchReviewModelImpl.fromJson;

  @override
  @JsonKey(name: 'rating')
  int get rating;
  @override
  @JsonKey(name: 'comment')
  String get comment;

  /// Create a copy of WriteBranchReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WriteBranchReviewModelImplCopyWith<_$WriteBranchReviewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
