// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BranchDetailModel _$BranchDetailModelFromJson(Map<String, dynamic> json) {
  return _BranchDetailModel.fromJson(json);
}

/// @nodoc
mixin _$BranchDetailModel {
  @JsonKey(name: 'idx')
  int get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'operatingHours')
  String get operatingHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewCount1')
  int get reviewCount1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewCount2')
  int get reviewCount2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewCount3')
  int get reviewCount3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewCount4')
  int get reviewCount4 => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewCount5')
  int get reviewCount5 => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalReviewCount')
  int get totalReviewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'averageRating')
  double get averageRating => throw _privateConstructorUsedError;

  /// Serializes this BranchDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchDetailModelCopyWith<BranchDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchDetailModelCopyWith<$Res> {
  factory $BranchDetailModelCopyWith(
          BranchDetailModel value, $Res Function(BranchDetailModel) then) =
      _$BranchDetailModelCopyWithImpl<$Res, BranchDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'operatingHours') String operatingHours,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'reviewCount1') int reviewCount1,
      @JsonKey(name: 'reviewCount2') int reviewCount2,
      @JsonKey(name: 'reviewCount3') int reviewCount3,
      @JsonKey(name: 'reviewCount4') int reviewCount4,
      @JsonKey(name: 'reviewCount5') int reviewCount5,
      @JsonKey(name: 'totalReviewCount') int totalReviewCount,
      @JsonKey(name: 'averageRating') double averageRating});
}

/// @nodoc
class _$BranchDetailModelCopyWithImpl<$Res, $Val extends BranchDetailModel>
    implements $BranchDetailModelCopyWith<$Res> {
  _$BranchDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? name = null,
    Object? location = null,
    Object? operatingHours = null,
    Object? description = freezed,
    Object? reviewCount1 = null,
    Object? reviewCount2 = null,
    Object? reviewCount3 = null,
    Object? reviewCount4 = null,
    Object? reviewCount5 = null,
    Object? totalReviewCount = null,
    Object? averageRating = null,
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
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      operatingHours: null == operatingHours
          ? _value.operatingHours
          : operatingHours // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewCount1: null == reviewCount1
          ? _value.reviewCount1
          : reviewCount1 // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount2: null == reviewCount2
          ? _value.reviewCount2
          : reviewCount2 // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount3: null == reviewCount3
          ? _value.reviewCount3
          : reviewCount3 // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount4: null == reviewCount4
          ? _value.reviewCount4
          : reviewCount4 // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount5: null == reviewCount5
          ? _value.reviewCount5
          : reviewCount5 // ignore: cast_nullable_to_non_nullable
              as int,
      totalReviewCount: null == totalReviewCount
          ? _value.totalReviewCount
          : totalReviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchDetailModelImplCopyWith<$Res>
    implements $BranchDetailModelCopyWith<$Res> {
  factory _$$BranchDetailModelImplCopyWith(_$BranchDetailModelImpl value,
          $Res Function(_$BranchDetailModelImpl) then) =
      __$$BranchDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'operatingHours') String operatingHours,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'reviewCount1') int reviewCount1,
      @JsonKey(name: 'reviewCount2') int reviewCount2,
      @JsonKey(name: 'reviewCount3') int reviewCount3,
      @JsonKey(name: 'reviewCount4') int reviewCount4,
      @JsonKey(name: 'reviewCount5') int reviewCount5,
      @JsonKey(name: 'totalReviewCount') int totalReviewCount,
      @JsonKey(name: 'averageRating') double averageRating});
}

/// @nodoc
class __$$BranchDetailModelImplCopyWithImpl<$Res>
    extends _$BranchDetailModelCopyWithImpl<$Res, _$BranchDetailModelImpl>
    implements _$$BranchDetailModelImplCopyWith<$Res> {
  __$$BranchDetailModelImplCopyWithImpl(_$BranchDetailModelImpl _value,
      $Res Function(_$BranchDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? name = null,
    Object? location = null,
    Object? operatingHours = null,
    Object? description = freezed,
    Object? reviewCount1 = null,
    Object? reviewCount2 = null,
    Object? reviewCount3 = null,
    Object? reviewCount4 = null,
    Object? reviewCount5 = null,
    Object? totalReviewCount = null,
    Object? averageRating = null,
  }) {
    return _then(_$BranchDetailModelImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      operatingHours: null == operatingHours
          ? _value.operatingHours
          : operatingHours // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewCount1: null == reviewCount1
          ? _value.reviewCount1
          : reviewCount1 // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount2: null == reviewCount2
          ? _value.reviewCount2
          : reviewCount2 // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount3: null == reviewCount3
          ? _value.reviewCount3
          : reviewCount3 // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount4: null == reviewCount4
          ? _value.reviewCount4
          : reviewCount4 // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount5: null == reviewCount5
          ? _value.reviewCount5
          : reviewCount5 // ignore: cast_nullable_to_non_nullable
              as int,
      totalReviewCount: null == totalReviewCount
          ? _value.totalReviewCount
          : totalReviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchDetailModelImpl
    with DiagnosticableTreeMixin
    implements _BranchDetailModel {
  const _$BranchDetailModelImpl(
      {@JsonKey(name: 'idx') required this.idx,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'operatingHours') required this.operatingHours,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'reviewCount1') required this.reviewCount1,
      @JsonKey(name: 'reviewCount2') required this.reviewCount2,
      @JsonKey(name: 'reviewCount3') required this.reviewCount3,
      @JsonKey(name: 'reviewCount4') required this.reviewCount4,
      @JsonKey(name: 'reviewCount5') required this.reviewCount5,
      @JsonKey(name: 'totalReviewCount') required this.totalReviewCount,
      @JsonKey(name: 'averageRating') required this.averageRating});

  factory _$BranchDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchDetailModelImplFromJson(json);

  @override
  @JsonKey(name: 'idx')
  final int idx;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'location')
  final String location;
  @override
  @JsonKey(name: 'operatingHours')
  final String operatingHours;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'reviewCount1')
  final int reviewCount1;
  @override
  @JsonKey(name: 'reviewCount2')
  final int reviewCount2;
  @override
  @JsonKey(name: 'reviewCount3')
  final int reviewCount3;
  @override
  @JsonKey(name: 'reviewCount4')
  final int reviewCount4;
  @override
  @JsonKey(name: 'reviewCount5')
  final int reviewCount5;
  @override
  @JsonKey(name: 'totalReviewCount')
  final int totalReviewCount;
  @override
  @JsonKey(name: 'averageRating')
  final double averageRating;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BranchDetailModel(idx: $idx, name: $name, location: $location, operatingHours: $operatingHours, description: $description, reviewCount1: $reviewCount1, reviewCount2: $reviewCount2, reviewCount3: $reviewCount3, reviewCount4: $reviewCount4, reviewCount5: $reviewCount5, totalReviewCount: $totalReviewCount, averageRating: $averageRating)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BranchDetailModel'))
      ..add(DiagnosticsProperty('idx', idx))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('operatingHours', operatingHours))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('reviewCount1', reviewCount1))
      ..add(DiagnosticsProperty('reviewCount2', reviewCount2))
      ..add(DiagnosticsProperty('reviewCount3', reviewCount3))
      ..add(DiagnosticsProperty('reviewCount4', reviewCount4))
      ..add(DiagnosticsProperty('reviewCount5', reviewCount5))
      ..add(DiagnosticsProperty('totalReviewCount', totalReviewCount))
      ..add(DiagnosticsProperty('averageRating', averageRating));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchDetailModelImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.operatingHours, operatingHours) ||
                other.operatingHours == operatingHours) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reviewCount1, reviewCount1) ||
                other.reviewCount1 == reviewCount1) &&
            (identical(other.reviewCount2, reviewCount2) ||
                other.reviewCount2 == reviewCount2) &&
            (identical(other.reviewCount3, reviewCount3) ||
                other.reviewCount3 == reviewCount3) &&
            (identical(other.reviewCount4, reviewCount4) ||
                other.reviewCount4 == reviewCount4) &&
            (identical(other.reviewCount5, reviewCount5) ||
                other.reviewCount5 == reviewCount5) &&
            (identical(other.totalReviewCount, totalReviewCount) ||
                other.totalReviewCount == totalReviewCount) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idx,
      name,
      location,
      operatingHours,
      description,
      reviewCount1,
      reviewCount2,
      reviewCount3,
      reviewCount4,
      reviewCount5,
      totalReviewCount,
      averageRating);

  /// Create a copy of BranchDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchDetailModelImplCopyWith<_$BranchDetailModelImpl> get copyWith =>
      __$$BranchDetailModelImplCopyWithImpl<_$BranchDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchDetailModelImplToJson(
      this,
    );
  }
}

abstract class _BranchDetailModel implements BranchDetailModel {
  const factory _BranchDetailModel(
      {@JsonKey(name: 'idx') required final int idx,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'location') required final String location,
      @JsonKey(name: 'operatingHours') required final String operatingHours,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'reviewCount1') required final int reviewCount1,
      @JsonKey(name: 'reviewCount2') required final int reviewCount2,
      @JsonKey(name: 'reviewCount3') required final int reviewCount3,
      @JsonKey(name: 'reviewCount4') required final int reviewCount4,
      @JsonKey(name: 'reviewCount5') required final int reviewCount5,
      @JsonKey(name: 'totalReviewCount') required final int totalReviewCount,
      @JsonKey(name: 'averageRating')
      required final double averageRating}) = _$BranchDetailModelImpl;

  factory _BranchDetailModel.fromJson(Map<String, dynamic> json) =
      _$BranchDetailModelImpl.fromJson;

  @override
  @JsonKey(name: 'idx')
  int get idx;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'location')
  String get location;
  @override
  @JsonKey(name: 'operatingHours')
  String get operatingHours;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'reviewCount1')
  int get reviewCount1;
  @override
  @JsonKey(name: 'reviewCount2')
  int get reviewCount2;
  @override
  @JsonKey(name: 'reviewCount3')
  int get reviewCount3;
  @override
  @JsonKey(name: 'reviewCount4')
  int get reviewCount4;
  @override
  @JsonKey(name: 'reviewCount5')
  int get reviewCount5;
  @override
  @JsonKey(name: 'totalReviewCount')
  int get totalReviewCount;
  @override
  @JsonKey(name: 'averageRating')
  double get averageRating;

  /// Create a copy of BranchDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchDetailModelImplCopyWith<_$BranchDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
