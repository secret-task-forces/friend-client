// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_consent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatchConsentModel _$PatchConsentModelFromJson(Map<String, dynamic> json) {
  return _PatchConsentModel.fromJson(json);
}

/// @nodoc
mixin _$PatchConsentModel {
  @JsonKey(name: 'consentType')
  String get consentType => throw _privateConstructorUsedError;

  /// Serializes this PatchConsentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatchConsentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatchConsentModelCopyWith<PatchConsentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchConsentModelCopyWith<$Res> {
  factory $PatchConsentModelCopyWith(
          PatchConsentModel value, $Res Function(PatchConsentModel) then) =
      _$PatchConsentModelCopyWithImpl<$Res, PatchConsentModel>;
  @useResult
  $Res call({@JsonKey(name: 'consentType') String consentType});
}

/// @nodoc
class _$PatchConsentModelCopyWithImpl<$Res, $Val extends PatchConsentModel>
    implements $PatchConsentModelCopyWith<$Res> {
  _$PatchConsentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatchConsentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consentType = null,
  }) {
    return _then(_value.copyWith(
      consentType: null == consentType
          ? _value.consentType
          : consentType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatchConsentModelImplCopyWith<$Res>
    implements $PatchConsentModelCopyWith<$Res> {
  factory _$$PatchConsentModelImplCopyWith(_$PatchConsentModelImpl value,
          $Res Function(_$PatchConsentModelImpl) then) =
      __$$PatchConsentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'consentType') String consentType});
}

/// @nodoc
class __$$PatchConsentModelImplCopyWithImpl<$Res>
    extends _$PatchConsentModelCopyWithImpl<$Res, _$PatchConsentModelImpl>
    implements _$$PatchConsentModelImplCopyWith<$Res> {
  __$$PatchConsentModelImplCopyWithImpl(_$PatchConsentModelImpl _value,
      $Res Function(_$PatchConsentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatchConsentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consentType = null,
  }) {
    return _then(_$PatchConsentModelImpl(
      consentType: null == consentType
          ? _value.consentType
          : consentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatchConsentModelImpl
    with DiagnosticableTreeMixin
    implements _PatchConsentModel {
  const _$PatchConsentModelImpl(
      {@JsonKey(name: 'consentType') required this.consentType});

  factory _$PatchConsentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatchConsentModelImplFromJson(json);

  @override
  @JsonKey(name: 'consentType')
  final String consentType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatchConsentModel(consentType: $consentType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatchConsentModel'))
      ..add(DiagnosticsProperty('consentType', consentType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchConsentModelImpl &&
            (identical(other.consentType, consentType) ||
                other.consentType == consentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, consentType);

  /// Create a copy of PatchConsentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchConsentModelImplCopyWith<_$PatchConsentModelImpl> get copyWith =>
      __$$PatchConsentModelImplCopyWithImpl<_$PatchConsentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchConsentModelImplToJson(
      this,
    );
  }
}

abstract class _PatchConsentModel implements PatchConsentModel {
  const factory _PatchConsentModel(
          {@JsonKey(name: 'consentType') required final String consentType}) =
      _$PatchConsentModelImpl;

  factory _PatchConsentModel.fromJson(Map<String, dynamic> json) =
      _$PatchConsentModelImpl.fromJson;

  @override
  @JsonKey(name: 'consentType')
  String get consentType;

  /// Create a copy of PatchConsentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatchConsentModelImplCopyWith<_$PatchConsentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
