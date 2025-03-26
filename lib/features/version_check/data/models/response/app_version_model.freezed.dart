// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppVersionModel _$AppVersionModelFromJson(Map<String, dynamic> json) {
  return _AppVersionModel.fromJson(json);
}

/// @nodoc
mixin _$AppVersionModel {
  @JsonKey(name: 'version')
  String get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'minVersion')
  String get minVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  /// Serializes this AppVersionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppVersionModelCopyWith<AppVersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionModelCopyWith<$Res> {
  factory $AppVersionModelCopyWith(
          AppVersionModel value, $Res Function(AppVersionModel) then) =
      _$AppVersionModelCopyWithImpl<$Res, AppVersionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'version') String version,
      @JsonKey(name: 'minVersion') String minVersion,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class _$AppVersionModelCopyWithImpl<$Res, $Val extends AppVersionModel>
    implements $AppVersionModelCopyWith<$Res> {
  _$AppVersionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? minVersion = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      minVersion: null == minVersion
          ? _value.minVersion
          : minVersion // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppVersionModelImplCopyWith<$Res>
    implements $AppVersionModelCopyWith<$Res> {
  factory _$$AppVersionModelImplCopyWith(_$AppVersionModelImpl value,
          $Res Function(_$AppVersionModelImpl) then) =
      __$$AppVersionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'version') String version,
      @JsonKey(name: 'minVersion') String minVersion,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class __$$AppVersionModelImplCopyWithImpl<$Res>
    extends _$AppVersionModelCopyWithImpl<$Res, _$AppVersionModelImpl>
    implements _$$AppVersionModelImplCopyWith<$Res> {
  __$$AppVersionModelImplCopyWithImpl(
      _$AppVersionModelImpl _value, $Res Function(_$AppVersionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? minVersion = null,
    Object? description = null,
  }) {
    return _then(_$AppVersionModelImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      minVersion: null == minVersion
          ? _value.minVersion
          : minVersion // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppVersionModelImpl
    with DiagnosticableTreeMixin
    implements _AppVersionModel {
  const _$AppVersionModelImpl(
      {@JsonKey(name: 'version') required this.version,
      @JsonKey(name: 'minVersion') required this.minVersion,
      @JsonKey(name: 'description') required this.description});

  factory _$AppVersionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppVersionModelImplFromJson(json);

  @override
  @JsonKey(name: 'version')
  final String version;
  @override
  @JsonKey(name: 'minVersion')
  final String minVersion;
  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppVersionModel(version: $version, minVersion: $minVersion, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppVersionModel'))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('minVersion', minVersion))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppVersionModelImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.minVersion, minVersion) ||
                other.minVersion == minVersion) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, version, minVersion, description);

  /// Create a copy of AppVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppVersionModelImplCopyWith<_$AppVersionModelImpl> get copyWith =>
      __$$AppVersionModelImplCopyWithImpl<_$AppVersionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppVersionModelImplToJson(
      this,
    );
  }
}

abstract class _AppVersionModel implements AppVersionModel {
  const factory _AppVersionModel(
          {@JsonKey(name: 'version') required final String version,
          @JsonKey(name: 'minVersion') required final String minVersion,
          @JsonKey(name: 'description') required final String description}) =
      _$AppVersionModelImpl;

  factory _AppVersionModel.fromJson(Map<String, dynamic> json) =
      _$AppVersionModelImpl.fromJson;

  @override
  @JsonKey(name: 'version')
  String get version;
  @override
  @JsonKey(name: 'minVersion')
  String get minVersion;
  @override
  @JsonKey(name: 'description')
  String get description;

  /// Create a copy of AppVersionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppVersionModelImplCopyWith<_$AppVersionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
