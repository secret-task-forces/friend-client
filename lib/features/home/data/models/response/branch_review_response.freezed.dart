// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_review_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BranchReviewResponse _$BranchReviewResponseFromJson(Map<String, dynamic> json) {
  return _BranchReviewResponse.fromJson(json);
}

/// @nodoc
mixin _$BranchReviewResponse {
  @JsonKey(name: 'totalPage')
  int get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentPage')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<BranchReviewModel> get data => throw _privateConstructorUsedError;

  /// Serializes this BranchReviewResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchReviewResponseCopyWith<BranchReviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchReviewResponseCopyWith<$Res> {
  factory $BranchReviewResponseCopyWith(BranchReviewResponse value,
          $Res Function(BranchReviewResponse) then) =
      _$BranchReviewResponseCopyWithImpl<$Res, BranchReviewResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'totalCount') int totalCount,
      @JsonKey(name: 'currentPage') int currentPage,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'data') List<BranchReviewModel> data});
}

/// @nodoc
class _$BranchReviewResponseCopyWithImpl<$Res,
        $Val extends BranchReviewResponse>
    implements $BranchReviewResponseCopyWith<$Res> {
  _$BranchReviewResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchReviewResponse
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
              as List<BranchReviewModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchReviewResponseImplCopyWith<$Res>
    implements $BranchReviewResponseCopyWith<$Res> {
  factory _$$BranchReviewResponseImplCopyWith(_$BranchReviewResponseImpl value,
          $Res Function(_$BranchReviewResponseImpl) then) =
      __$$BranchReviewResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'totalCount') int totalCount,
      @JsonKey(name: 'currentPage') int currentPage,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'data') List<BranchReviewModel> data});
}

/// @nodoc
class __$$BranchReviewResponseImplCopyWithImpl<$Res>
    extends _$BranchReviewResponseCopyWithImpl<$Res, _$BranchReviewResponseImpl>
    implements _$$BranchReviewResponseImplCopyWith<$Res> {
  __$$BranchReviewResponseImplCopyWithImpl(_$BranchReviewResponseImpl _value,
      $Res Function(_$BranchReviewResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchReviewResponse
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
    return _then(_$BranchReviewResponseImpl(
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
              as List<BranchReviewModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchReviewResponseImpl
    with DiagnosticableTreeMixin
    implements _BranchReviewResponse {
  const _$BranchReviewResponseImpl(
      {@JsonKey(name: 'totalPage') required this.totalPage,
      @JsonKey(name: 'totalCount') required this.totalCount,
      @JsonKey(name: 'currentPage') required this.currentPage,
      @JsonKey(name: 'size') required this.size,
      @JsonKey(name: 'data') required final List<BranchReviewModel> data})
      : _data = data;

  factory _$BranchReviewResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchReviewResponseImplFromJson(json);

  @override
  @JsonKey(name: 'totalPage')
  final int totalPage;
  @override
  @JsonKey(name: 'totalCount')
  final int totalCount;
  @override
  @JsonKey(name: 'currentPage')
  final int currentPage;
  @override
  @JsonKey(name: 'size')
  final int size;
  final List<BranchReviewModel> _data;
  @override
  @JsonKey(name: 'data')
  List<BranchReviewModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BranchReviewResponse(totalPage: $totalPage, totalCount: $totalCount, currentPage: $currentPage, size: $size, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BranchReviewResponse'))
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
            other is _$BranchReviewResponseImpl &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalPage, totalCount,
      currentPage, size, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BranchReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchReviewResponseImplCopyWith<_$BranchReviewResponseImpl>
      get copyWith =>
          __$$BranchReviewResponseImplCopyWithImpl<_$BranchReviewResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchReviewResponseImplToJson(
      this,
    );
  }
}

abstract class _BranchReviewResponse implements BranchReviewResponse {
  const factory _BranchReviewResponse(
          {@JsonKey(name: 'totalPage') required final int totalPage,
          @JsonKey(name: 'totalCount') required final int totalCount,
          @JsonKey(name: 'currentPage') required final int currentPage,
          @JsonKey(name: 'size') required final int size,
          @JsonKey(name: 'data') required final List<BranchReviewModel> data}) =
      _$BranchReviewResponseImpl;

  factory _BranchReviewResponse.fromJson(Map<String, dynamic> json) =
      _$BranchReviewResponseImpl.fromJson;

  @override
  @JsonKey(name: 'totalPage')
  int get totalPage;
  @override
  @JsonKey(name: 'totalCount')
  int get totalCount;
  @override
  @JsonKey(name: 'currentPage')
  int get currentPage;
  @override
  @JsonKey(name: 'size')
  int get size;
  @override
  @JsonKey(name: 'data')
  List<BranchReviewModel> get data;

  /// Create a copy of BranchReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchReviewResponseImplCopyWith<_$BranchReviewResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BranchReviewModel _$BranchReviewModelFromJson(Map<String, dynamic> json) {
  return _BranchReviewModel.fromJson(json);
}

/// @nodoc
mixin _$BranchReviewModel {
  @JsonKey(name: 'idx')
  int get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'userIdx')
  int get userIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'userName')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this BranchReviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchReviewModelCopyWith<BranchReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchReviewModelCopyWith<$Res> {
  factory $BranchReviewModelCopyWith(
          BranchReviewModel value, $Res Function(BranchReviewModel) then) =
      _$BranchReviewModelCopyWithImpl<$Res, BranchReviewModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'userIdx') int userIdx,
      @JsonKey(name: 'userName') String userName,
      @JsonKey(name: 'rating') int rating,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(name: 'createdAt') int createdAt});
}

/// @nodoc
class _$BranchReviewModelCopyWithImpl<$Res, $Val extends BranchReviewModel>
    implements $BranchReviewModelCopyWith<$Res> {
  _$BranchReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchReviewModel
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
abstract class _$$BranchReviewModelImplCopyWith<$Res>
    implements $BranchReviewModelCopyWith<$Res> {
  factory _$$BranchReviewModelImplCopyWith(_$BranchReviewModelImpl value,
          $Res Function(_$BranchReviewModelImpl) then) =
      __$$BranchReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'userIdx') int userIdx,
      @JsonKey(name: 'userName') String userName,
      @JsonKey(name: 'rating') int rating,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(name: 'createdAt') int createdAt});
}

/// @nodoc
class __$$BranchReviewModelImplCopyWithImpl<$Res>
    extends _$BranchReviewModelCopyWithImpl<$Res, _$BranchReviewModelImpl>
    implements _$$BranchReviewModelImplCopyWith<$Res> {
  __$$BranchReviewModelImplCopyWithImpl(_$BranchReviewModelImpl _value,
      $Res Function(_$BranchReviewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchReviewModel
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
    return _then(_$BranchReviewModelImpl(
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
@JsonSerializable()
class _$BranchReviewModelImpl
    with DiagnosticableTreeMixin
    implements _BranchReviewModel {
  const _$BranchReviewModelImpl(
      {@JsonKey(name: 'idx') required this.idx,
      @JsonKey(name: 'userIdx') required this.userIdx,
      @JsonKey(name: 'userName') required this.userName,
      @JsonKey(name: 'rating') required this.rating,
      @JsonKey(name: 'comment') required this.comment,
      @JsonKey(name: 'createdAt') required this.createdAt});

  factory _$BranchReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchReviewModelImplFromJson(json);

  @override
  @JsonKey(name: 'idx')
  final int idx;
  @override
  @JsonKey(name: 'userIdx')
  final int userIdx;
  @override
  @JsonKey(name: 'userName')
  final String userName;
  @override
  @JsonKey(name: 'rating')
  final int rating;
  @override
  @JsonKey(name: 'comment')
  final String comment;
  @override
  @JsonKey(name: 'createdAt')
  final int createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BranchReviewModel(idx: $idx, userIdx: $userIdx, userName: $userName, rating: $rating, comment: $comment, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BranchReviewModel'))
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
            other is _$BranchReviewModelImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.userIdx, userIdx) || other.userIdx == userIdx) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, idx, userIdx, userName, rating, comment, createdAt);

  /// Create a copy of BranchReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchReviewModelImplCopyWith<_$BranchReviewModelImpl> get copyWith =>
      __$$BranchReviewModelImplCopyWithImpl<_$BranchReviewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchReviewModelImplToJson(
      this,
    );
  }
}

abstract class _BranchReviewModel implements BranchReviewModel {
  const factory _BranchReviewModel(
          {@JsonKey(name: 'idx') required final int idx,
          @JsonKey(name: 'userIdx') required final int userIdx,
          @JsonKey(name: 'userName') required final String userName,
          @JsonKey(name: 'rating') required final int rating,
          @JsonKey(name: 'comment') required final String comment,
          @JsonKey(name: 'createdAt') required final int createdAt}) =
      _$BranchReviewModelImpl;

  factory _BranchReviewModel.fromJson(Map<String, dynamic> json) =
      _$BranchReviewModelImpl.fromJson;

  @override
  @JsonKey(name: 'idx')
  int get idx;
  @override
  @JsonKey(name: 'userIdx')
  int get userIdx;
  @override
  @JsonKey(name: 'userName')
  String get userName;
  @override
  @JsonKey(name: 'rating')
  int get rating;
  @override
  @JsonKey(name: 'comment')
  String get comment;
  @override
  @JsonKey(name: 'createdAt')
  int get createdAt;

  /// Create a copy of BranchReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchReviewModelImplCopyWith<_$BranchReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
