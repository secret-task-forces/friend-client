// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'put_fcm_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PutFcmTokenModel _$PutFcmTokenModelFromJson(Map<String, dynamic> json) {
  return _PutFcmTokenModel.fromJson(json);
}

/// @nodoc
mixin _$PutFcmTokenModel {
  @JsonKey(name: 'fcmToken')
  String get fcmToken => throw _privateConstructorUsedError;

  /// Serializes this PutFcmTokenModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PutFcmTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PutFcmTokenModelCopyWith<PutFcmTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PutFcmTokenModelCopyWith<$Res> {
  factory $PutFcmTokenModelCopyWith(
          PutFcmTokenModel value, $Res Function(PutFcmTokenModel) then) =
      _$PutFcmTokenModelCopyWithImpl<$Res, PutFcmTokenModel>;
  @useResult
  $Res call({@JsonKey(name: 'fcmToken') String fcmToken});
}

/// @nodoc
class _$PutFcmTokenModelCopyWithImpl<$Res, $Val extends PutFcmTokenModel>
    implements $PutFcmTokenModelCopyWith<$Res> {
  _$PutFcmTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PutFcmTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
  }) {
    return _then(_value.copyWith(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PutFcmTokenModelImplCopyWith<$Res>
    implements $PutFcmTokenModelCopyWith<$Res> {
  factory _$$PutFcmTokenModelImplCopyWith(_$PutFcmTokenModelImpl value,
          $Res Function(_$PutFcmTokenModelImpl) then) =
      __$$PutFcmTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'fcmToken') String fcmToken});
}

/// @nodoc
class __$$PutFcmTokenModelImplCopyWithImpl<$Res>
    extends _$PutFcmTokenModelCopyWithImpl<$Res, _$PutFcmTokenModelImpl>
    implements _$$PutFcmTokenModelImplCopyWith<$Res> {
  __$$PutFcmTokenModelImplCopyWithImpl(_$PutFcmTokenModelImpl _value,
      $Res Function(_$PutFcmTokenModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PutFcmTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
  }) {
    return _then(_$PutFcmTokenModelImpl(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PutFcmTokenModelImpl
    with DiagnosticableTreeMixin
    implements _PutFcmTokenModel {
  const _$PutFcmTokenModelImpl(
      {@JsonKey(name: 'fcmToken') required this.fcmToken});

  factory _$PutFcmTokenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PutFcmTokenModelImplFromJson(json);

  @override
  @JsonKey(name: 'fcmToken')
  final String fcmToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PutFcmTokenModel(fcmToken: $fcmToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PutFcmTokenModel'))
      ..add(DiagnosticsProperty('fcmToken', fcmToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutFcmTokenModelImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken);

  /// Create a copy of PutFcmTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PutFcmTokenModelImplCopyWith<_$PutFcmTokenModelImpl> get copyWith =>
      __$$PutFcmTokenModelImplCopyWithImpl<_$PutFcmTokenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PutFcmTokenModelImplToJson(
      this,
    );
  }
}

abstract class _PutFcmTokenModel implements PutFcmTokenModel {
  const factory _PutFcmTokenModel(
          {@JsonKey(name: 'fcmToken') required final String fcmToken}) =
      _$PutFcmTokenModelImpl;

  factory _PutFcmTokenModel.fromJson(Map<String, dynamic> json) =
      _$PutFcmTokenModelImpl.fromJson;

  @override
  @JsonKey(name: 'fcmToken')
  String get fcmToken;

  /// Create a copy of PutFcmTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PutFcmTokenModelImplCopyWith<_$PutFcmTokenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
