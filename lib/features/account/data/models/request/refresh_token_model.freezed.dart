// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefreshTokenModel _$RefreshTokenModelFromJson(Map<String, dynamic> json) {
  return _RefreshTokenModel.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenModel {
  @JsonKey(name: 'refreshToken')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this RefreshTokenModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshTokenModelCopyWith<RefreshTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenModelCopyWith<$Res> {
  factory $RefreshTokenModelCopyWith(
          RefreshTokenModel value, $Res Function(RefreshTokenModel) then) =
      _$RefreshTokenModelCopyWithImpl<$Res, RefreshTokenModel>;
  @useResult
  $Res call({@JsonKey(name: 'refreshToken') String refreshToken});
}

/// @nodoc
class _$RefreshTokenModelCopyWithImpl<$Res, $Val extends RefreshTokenModel>
    implements $RefreshTokenModelCopyWith<$Res> {
  _$RefreshTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenModelImplCopyWith<$Res>
    implements $RefreshTokenModelCopyWith<$Res> {
  factory _$$RefreshTokenModelImplCopyWith(_$RefreshTokenModelImpl value,
          $Res Function(_$RefreshTokenModelImpl) then) =
      __$$RefreshTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'refreshToken') String refreshToken});
}

/// @nodoc
class __$$RefreshTokenModelImplCopyWithImpl<$Res>
    extends _$RefreshTokenModelCopyWithImpl<$Res, _$RefreshTokenModelImpl>
    implements _$$RefreshTokenModelImplCopyWith<$Res> {
  __$$RefreshTokenModelImplCopyWithImpl(_$RefreshTokenModelImpl _value,
      $Res Function(_$RefreshTokenModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_$RefreshTokenModelImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenModelImpl
    with DiagnosticableTreeMixin
    implements _RefreshTokenModel {
  const _$RefreshTokenModelImpl(
      {@JsonKey(name: 'refreshToken') required this.refreshToken});

  factory _$RefreshTokenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenModelImplFromJson(json);

  @override
  @JsonKey(name: 'refreshToken')
  final String refreshToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefreshTokenModel(refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefreshTokenModel'))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenModelImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  /// Create a copy of RefreshTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenModelImplCopyWith<_$RefreshTokenModelImpl> get copyWith =>
      __$$RefreshTokenModelImplCopyWithImpl<_$RefreshTokenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenModelImplToJson(
      this,
    );
  }
}

abstract class _RefreshTokenModel implements RefreshTokenModel {
  const factory _RefreshTokenModel(
          {@JsonKey(name: 'refreshToken') required final String refreshToken}) =
      _$RefreshTokenModelImpl;

  factory _RefreshTokenModel.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenModelImpl.fromJson;

  @override
  @JsonKey(name: 'refreshToken')
  String get refreshToken;

  /// Create a copy of RefreshTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshTokenModelImplCopyWith<_$RefreshTokenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
