// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FaqCategoryModel _$FaqCategoryModelFromJson(Map<String, dynamic> json) {
  return _FaqCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$FaqCategoryModel {
  @JsonKey(name: 'idx')
  int get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this FaqCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FaqCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqCategoryModelCopyWith<FaqCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqCategoryModelCopyWith<$Res> {
  factory $FaqCategoryModelCopyWith(
          FaqCategoryModel value, $Res Function(FaqCategoryModel) then) =
      _$FaqCategoryModelCopyWithImpl<$Res, FaqCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$FaqCategoryModelCopyWithImpl<$Res, $Val extends FaqCategoryModel>
    implements $FaqCategoryModelCopyWith<$Res> {
  _$FaqCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqCategoryModel
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
abstract class _$$FaqCategoryModelImplCopyWith<$Res>
    implements $FaqCategoryModelCopyWith<$Res> {
  factory _$$FaqCategoryModelImplCopyWith(_$FaqCategoryModelImpl value,
          $Res Function(_$FaqCategoryModelImpl) then) =
      __$$FaqCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$FaqCategoryModelImplCopyWithImpl<$Res>
    extends _$FaqCategoryModelCopyWithImpl<$Res, _$FaqCategoryModelImpl>
    implements _$$FaqCategoryModelImplCopyWith<$Res> {
  __$$FaqCategoryModelImplCopyWithImpl(_$FaqCategoryModelImpl _value,
      $Res Function(_$FaqCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? name = null,
  }) {
    return _then(_$FaqCategoryModelImpl(
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
class _$FaqCategoryModelImpl
    with DiagnosticableTreeMixin
    implements _FaqCategoryModel {
  const _$FaqCategoryModelImpl(
      {@JsonKey(name: 'idx') required this.idx,
      @JsonKey(name: 'name') required this.name});

  factory _$FaqCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'idx')
  final int idx;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FaqCategoryModel(idx: $idx, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FaqCategoryModel'))
      ..add(DiagnosticsProperty('idx', idx))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqCategoryModelImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idx, name);

  /// Create a copy of FaqCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqCategoryModelImplCopyWith<_$FaqCategoryModelImpl> get copyWith =>
      __$$FaqCategoryModelImplCopyWithImpl<_$FaqCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _FaqCategoryModel implements FaqCategoryModel {
  const factory _FaqCategoryModel(
          {@JsonKey(name: 'idx') required final int idx,
          @JsonKey(name: 'name') required final String name}) =
      _$FaqCategoryModelImpl;

  factory _FaqCategoryModel.fromJson(Map<String, dynamic> json) =
      _$FaqCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'idx')
  int get idx;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of FaqCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqCategoryModelImplCopyWith<_$FaqCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
