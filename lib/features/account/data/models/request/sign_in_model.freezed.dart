// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInModel _$SignInModelFromJson(Map<String, dynamic> json) {
  return _SignInModel.fromJson(json);
}

/// @nodoc
mixin _$SignInModel {
  @JsonKey(name: 'socialType')
  String get socialType => throw _privateConstructorUsedError;
  @JsonKey(name: 'socialKey')
  String get socialKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'subSocialKey')
  String? get subSocialKey => throw _privateConstructorUsedError;

  /// Serializes this SignInModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignInModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInModelCopyWith<SignInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInModelCopyWith<$Res> {
  factory $SignInModelCopyWith(
          SignInModel value, $Res Function(SignInModel) then) =
      _$SignInModelCopyWithImpl<$Res, SignInModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'socialType') String socialType,
      @JsonKey(name: 'socialKey') String socialKey,
      @JsonKey(name: 'subSocialKey') String? subSocialKey});
}

/// @nodoc
class _$SignInModelCopyWithImpl<$Res, $Val extends SignInModel>
    implements $SignInModelCopyWith<$Res> {
  _$SignInModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialType = null,
    Object? socialKey = null,
    Object? subSocialKey = freezed,
  }) {
    return _then(_value.copyWith(
      socialType: null == socialType
          ? _value.socialType
          : socialType // ignore: cast_nullable_to_non_nullable
              as String,
      socialKey: null == socialKey
          ? _value.socialKey
          : socialKey // ignore: cast_nullable_to_non_nullable
              as String,
      subSocialKey: freezed == subSocialKey
          ? _value.subSocialKey
          : subSocialKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInModelImplCopyWith<$Res>
    implements $SignInModelCopyWith<$Res> {
  factory _$$SignInModelImplCopyWith(
          _$SignInModelImpl value, $Res Function(_$SignInModelImpl) then) =
      __$$SignInModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'socialType') String socialType,
      @JsonKey(name: 'socialKey') String socialKey,
      @JsonKey(name: 'subSocialKey') String? subSocialKey});
}

/// @nodoc
class __$$SignInModelImplCopyWithImpl<$Res>
    extends _$SignInModelCopyWithImpl<$Res, _$SignInModelImpl>
    implements _$$SignInModelImplCopyWith<$Res> {
  __$$SignInModelImplCopyWithImpl(
      _$SignInModelImpl _value, $Res Function(_$SignInModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialType = null,
    Object? socialKey = null,
    Object? subSocialKey = freezed,
  }) {
    return _then(_$SignInModelImpl(
      socialType: null == socialType
          ? _value.socialType
          : socialType // ignore: cast_nullable_to_non_nullable
              as String,
      socialKey: null == socialKey
          ? _value.socialKey
          : socialKey // ignore: cast_nullable_to_non_nullable
              as String,
      subSocialKey: freezed == subSocialKey
          ? _value.subSocialKey
          : subSocialKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInModelImpl with DiagnosticableTreeMixin implements _SignInModel {
  const _$SignInModelImpl(
      {@JsonKey(name: 'socialType') required this.socialType,
      @JsonKey(name: 'socialKey') required this.socialKey,
      @JsonKey(name: 'subSocialKey') this.subSocialKey});

  factory _$SignInModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInModelImplFromJson(json);

  @override
  @JsonKey(name: 'socialType')
  final String socialType;
  @override
  @JsonKey(name: 'socialKey')
  final String socialKey;
  @override
  @JsonKey(name: 'subSocialKey')
  final String? subSocialKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInModel(socialType: $socialType, socialKey: $socialKey, subSocialKey: $subSocialKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInModel'))
      ..add(DiagnosticsProperty('socialType', socialType))
      ..add(DiagnosticsProperty('socialKey', socialKey))
      ..add(DiagnosticsProperty('subSocialKey', subSocialKey));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInModelImpl &&
            (identical(other.socialType, socialType) ||
                other.socialType == socialType) &&
            (identical(other.socialKey, socialKey) ||
                other.socialKey == socialKey) &&
            (identical(other.subSocialKey, subSocialKey) ||
                other.subSocialKey == subSocialKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, socialType, socialKey, subSocialKey);

  /// Create a copy of SignInModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInModelImplCopyWith<_$SignInModelImpl> get copyWith =>
      __$$SignInModelImplCopyWithImpl<_$SignInModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInModelImplToJson(
      this,
    );
  }
}

abstract class _SignInModel implements SignInModel {
  const factory _SignInModel(
          {@JsonKey(name: 'socialType') required final String socialType,
          @JsonKey(name: 'socialKey') required final String socialKey,
          @JsonKey(name: 'subSocialKey') final String? subSocialKey}) =
      _$SignInModelImpl;

  factory _SignInModel.fromJson(Map<String, dynamic> json) =
      _$SignInModelImpl.fromJson;

  @override
  @JsonKey(name: 'socialType')
  String get socialType;
  @override
  @JsonKey(name: 'socialKey')
  String get socialKey;
  @override
  @JsonKey(name: 'subSocialKey')
  String? get subSocialKey;

  /// Create a copy of SignInModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInModelImplCopyWith<_$SignInModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
