// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoticeCategoryModel _$NoticeCategoryModelFromJson(Map<String, dynamic> json) {
  return _NoticeCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$NoticeCategoryModel {
  @JsonKey(name: 'idx')
  int get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this NoticeCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoticeCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeCategoryModelCopyWith<NoticeCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeCategoryModelCopyWith<$Res> {
  factory $NoticeCategoryModelCopyWith(
          NoticeCategoryModel value, $Res Function(NoticeCategoryModel) then) =
      _$NoticeCategoryModelCopyWithImpl<$Res, NoticeCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$NoticeCategoryModelCopyWithImpl<$Res, $Val extends NoticeCategoryModel>
    implements $NoticeCategoryModelCopyWith<$Res> {
  _$NoticeCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeCategoryModel
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
abstract class _$$NoticeCategoryModelImplCopyWith<$Res>
    implements $NoticeCategoryModelCopyWith<$Res> {
  factory _$$NoticeCategoryModelImplCopyWith(_$NoticeCategoryModelImpl value,
          $Res Function(_$NoticeCategoryModelImpl) then) =
      __$$NoticeCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$NoticeCategoryModelImplCopyWithImpl<$Res>
    extends _$NoticeCategoryModelCopyWithImpl<$Res, _$NoticeCategoryModelImpl>
    implements _$$NoticeCategoryModelImplCopyWith<$Res> {
  __$$NoticeCategoryModelImplCopyWithImpl(_$NoticeCategoryModelImpl _value,
      $Res Function(_$NoticeCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? name = null,
  }) {
    return _then(_$NoticeCategoryModelImpl(
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
@JsonSerializable()
class _$NoticeCategoryModelImpl
    with DiagnosticableTreeMixin
    implements _NoticeCategoryModel {
  const _$NoticeCategoryModelImpl(
      {@JsonKey(name: 'idx') required this.idx,
      @JsonKey(name: 'name') required this.name});

  factory _$NoticeCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticeCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'idx')
  final int idx;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoticeCategoryModel(idx: $idx, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoticeCategoryModel'))
      ..add(DiagnosticsProperty('idx', idx))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeCategoryModelImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idx, name);

  /// Create a copy of NoticeCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeCategoryModelImplCopyWith<_$NoticeCategoryModelImpl> get copyWith =>
      __$$NoticeCategoryModelImplCopyWithImpl<_$NoticeCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _NoticeCategoryModel implements NoticeCategoryModel {
  const factory _NoticeCategoryModel(
          {@JsonKey(name: 'idx') required final int idx,
          @JsonKey(name: 'name') required final String name}) =
      _$NoticeCategoryModelImpl;

  factory _NoticeCategoryModel.fromJson(Map<String, dynamic> json) =
      _$NoticeCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'idx')
  int get idx;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of NoticeCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeCategoryModelImplCopyWith<_$NoticeCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
