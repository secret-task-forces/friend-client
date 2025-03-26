// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_withdrawal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostWithdrawalModel _$PostWithdrawalModelFromJson(Map<String, dynamic> json) {
  return _PostWithdrawalModel.fromJson(json);
}

/// @nodoc
mixin _$PostWithdrawalModel {
  @JsonKey(name: 'reasons')
  List<String> get reasons => throw _privateConstructorUsedError;

  /// Serializes this PostWithdrawalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostWithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostWithdrawalModelCopyWith<PostWithdrawalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostWithdrawalModelCopyWith<$Res> {
  factory $PostWithdrawalModelCopyWith(
          PostWithdrawalModel value, $Res Function(PostWithdrawalModel) then) =
      _$PostWithdrawalModelCopyWithImpl<$Res, PostWithdrawalModel>;
  @useResult
  $Res call({@JsonKey(name: 'reasons') List<String> reasons});
}

/// @nodoc
class _$PostWithdrawalModelCopyWithImpl<$Res, $Val extends PostWithdrawalModel>
    implements $PostWithdrawalModelCopyWith<$Res> {
  _$PostWithdrawalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostWithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reasons = null,
  }) {
    return _then(_value.copyWith(
      reasons: null == reasons
          ? _value.reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostWithdrawalModelImplCopyWith<$Res>
    implements $PostWithdrawalModelCopyWith<$Res> {
  factory _$$PostWithdrawalModelImplCopyWith(_$PostWithdrawalModelImpl value,
          $Res Function(_$PostWithdrawalModelImpl) then) =
      __$$PostWithdrawalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'reasons') List<String> reasons});
}

/// @nodoc
class __$$PostWithdrawalModelImplCopyWithImpl<$Res>
    extends _$PostWithdrawalModelCopyWithImpl<$Res, _$PostWithdrawalModelImpl>
    implements _$$PostWithdrawalModelImplCopyWith<$Res> {
  __$$PostWithdrawalModelImplCopyWithImpl(_$PostWithdrawalModelImpl _value,
      $Res Function(_$PostWithdrawalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostWithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reasons = null,
  }) {
    return _then(_$PostWithdrawalModelImpl(
      reasons: null == reasons
          ? _value._reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostWithdrawalModelImpl
    with DiagnosticableTreeMixin
    implements _PostWithdrawalModel {
  const _$PostWithdrawalModelImpl(
      {@JsonKey(name: 'reasons') required final List<String> reasons})
      : _reasons = reasons;

  factory _$PostWithdrawalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostWithdrawalModelImplFromJson(json);

  final List<String> _reasons;
  @override
  @JsonKey(name: 'reasons')
  List<String> get reasons {
    if (_reasons is EqualUnmodifiableListView) return _reasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reasons);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostWithdrawalModel(reasons: $reasons)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostWithdrawalModel'))
      ..add(DiagnosticsProperty('reasons', reasons));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostWithdrawalModelImpl &&
            const DeepCollectionEquality().equals(other._reasons, _reasons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reasons));

  /// Create a copy of PostWithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostWithdrawalModelImplCopyWith<_$PostWithdrawalModelImpl> get copyWith =>
      __$$PostWithdrawalModelImplCopyWithImpl<_$PostWithdrawalModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostWithdrawalModelImplToJson(
      this,
    );
  }
}

abstract class _PostWithdrawalModel implements PostWithdrawalModel {
  const factory _PostWithdrawalModel(
          {@JsonKey(name: 'reasons') required final List<String> reasons}) =
      _$PostWithdrawalModelImpl;

  factory _PostWithdrawalModel.fromJson(Map<String, dynamic> json) =
      _$PostWithdrawalModelImpl.fromJson;

  @override
  @JsonKey(name: 'reasons')
  List<String> get reasons;

  /// Create a copy of PostWithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostWithdrawalModelImplCopyWith<_$PostWithdrawalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
