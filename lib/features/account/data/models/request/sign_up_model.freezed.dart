// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpModel _$SignUpModelFromJson(Map<String, dynamic> json) {
  return _SignUpModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpModel {
  @JsonKey(name: 'socialType')
  String get socialType => throw _privateConstructorUsedError;
  @JsonKey(name: 'socialKey')
  String get socialKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'subSocialKey')
  String? get subSocialKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribedAds')
  bool get subscribedAds => throw _privateConstructorUsedError;

  /// Serializes this SignUpModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpModelCopyWith<SignUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpModelCopyWith<$Res> {
  factory $SignUpModelCopyWith(
          SignUpModel value, $Res Function(SignUpModel) then) =
      _$SignUpModelCopyWithImpl<$Res, SignUpModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'socialType') String socialType,
      @JsonKey(name: 'socialKey') String socialKey,
      @JsonKey(name: 'subSocialKey') String? subSocialKey,
      @JsonKey(name: 'subscribedAds') bool subscribedAds});
}

/// @nodoc
class _$SignUpModelCopyWithImpl<$Res, $Val extends SignUpModel>
    implements $SignUpModelCopyWith<$Res> {
  _$SignUpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialType = null,
    Object? socialKey = null,
    Object? subSocialKey = freezed,
    Object? subscribedAds = null,
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
      subscribedAds: null == subscribedAds
          ? _value.subscribedAds
          : subscribedAds // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpModelImplCopyWith<$Res>
    implements $SignUpModelCopyWith<$Res> {
  factory _$$SignUpModelImplCopyWith(
          _$SignUpModelImpl value, $Res Function(_$SignUpModelImpl) then) =
      __$$SignUpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'socialType') String socialType,
      @JsonKey(name: 'socialKey') String socialKey,
      @JsonKey(name: 'subSocialKey') String? subSocialKey,
      @JsonKey(name: 'subscribedAds') bool subscribedAds});
}

/// @nodoc
class __$$SignUpModelImplCopyWithImpl<$Res>
    extends _$SignUpModelCopyWithImpl<$Res, _$SignUpModelImpl>
    implements _$$SignUpModelImplCopyWith<$Res> {
  __$$SignUpModelImplCopyWithImpl(
      _$SignUpModelImpl _value, $Res Function(_$SignUpModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialType = null,
    Object? socialKey = null,
    Object? subSocialKey = freezed,
    Object? subscribedAds = null,
  }) {
    return _then(_$SignUpModelImpl(
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
      subscribedAds: null == subscribedAds
          ? _value.subscribedAds
          : subscribedAds // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpModelImpl with DiagnosticableTreeMixin implements _SignUpModel {
  const _$SignUpModelImpl(
      {@JsonKey(name: 'socialType') required this.socialType,
      @JsonKey(name: 'socialKey') required this.socialKey,
      @JsonKey(name: 'subSocialKey') this.subSocialKey,
      @JsonKey(name: 'subscribedAds') required this.subscribedAds});

  factory _$SignUpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpModelImplFromJson(json);

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
  @JsonKey(name: 'subscribedAds')
  final bool subscribedAds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpModel(socialType: $socialType, socialKey: $socialKey, subSocialKey: $subSocialKey, subscribedAds: $subscribedAds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpModel'))
      ..add(DiagnosticsProperty('socialType', socialType))
      ..add(DiagnosticsProperty('socialKey', socialKey))
      ..add(DiagnosticsProperty('subSocialKey', subSocialKey))
      ..add(DiagnosticsProperty('subscribedAds', subscribedAds));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpModelImpl &&
            (identical(other.socialType, socialType) ||
                other.socialType == socialType) &&
            (identical(other.socialKey, socialKey) ||
                other.socialKey == socialKey) &&
            (identical(other.subSocialKey, subSocialKey) ||
                other.subSocialKey == subSocialKey) &&
            (identical(other.subscribedAds, subscribedAds) ||
                other.subscribedAds == subscribedAds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, socialType, socialKey, subSocialKey, subscribedAds);

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpModelImplCopyWith<_$SignUpModelImpl> get copyWith =>
      __$$SignUpModelImplCopyWithImpl<_$SignUpModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpModelImplToJson(
      this,
    );
  }
}

abstract class _SignUpModel implements SignUpModel {
  const factory _SignUpModel(
          {@JsonKey(name: 'socialType') required final String socialType,
          @JsonKey(name: 'socialKey') required final String socialKey,
          @JsonKey(name: 'subSocialKey') final String? subSocialKey,
          @JsonKey(name: 'subscribedAds') required final bool subscribedAds}) =
      _$SignUpModelImpl;

  factory _SignUpModel.fromJson(Map<String, dynamic> json) =
      _$SignUpModelImpl.fromJson;

  @override
  @JsonKey(name: 'socialType')
  String get socialType;
  @override
  @JsonKey(name: 'socialKey')
  String get socialKey;
  @override
  @JsonKey(name: 'subSocialKey')
  String? get subSocialKey;
  @override
  @JsonKey(name: 'subscribedAds')
  bool get subscribedAds;

  /// Create a copy of SignUpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpModelImplCopyWith<_$SignUpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
