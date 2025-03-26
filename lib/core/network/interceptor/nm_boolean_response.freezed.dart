// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nm_boolean_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NmBooleanResponse _$NmBooleanResponseFromJson(Map<String, dynamic> json) {
  return _NmBooleanResponse.fromJson(json);
}

/// @nodoc
mixin _$NmBooleanResponse {
  @JsonKey(name: 'result')
  bool get result => throw _privateConstructorUsedError;

  /// Serializes this NmBooleanResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NmBooleanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NmBooleanResponseCopyWith<NmBooleanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NmBooleanResponseCopyWith<$Res> {
  factory $NmBooleanResponseCopyWith(
          NmBooleanResponse value, $Res Function(NmBooleanResponse) then) =
      _$NmBooleanResponseCopyWithImpl<$Res, NmBooleanResponse>;
  @useResult
  $Res call({@JsonKey(name: 'result') bool result});
}

/// @nodoc
class _$NmBooleanResponseCopyWithImpl<$Res, $Val extends NmBooleanResponse>
    implements $NmBooleanResponseCopyWith<$Res> {
  _$NmBooleanResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NmBooleanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NmBooleanResponseImplCopyWith<$Res>
    implements $NmBooleanResponseCopyWith<$Res> {
  factory _$$NmBooleanResponseImplCopyWith(_$NmBooleanResponseImpl value,
          $Res Function(_$NmBooleanResponseImpl) then) =
      __$$NmBooleanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'result') bool result});
}

/// @nodoc
class __$$NmBooleanResponseImplCopyWithImpl<$Res>
    extends _$NmBooleanResponseCopyWithImpl<$Res, _$NmBooleanResponseImpl>
    implements _$$NmBooleanResponseImplCopyWith<$Res> {
  __$$NmBooleanResponseImplCopyWithImpl(_$NmBooleanResponseImpl _value,
      $Res Function(_$NmBooleanResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of NmBooleanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$NmBooleanResponseImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NmBooleanResponseImpl
    with DiagnosticableTreeMixin
    implements _NmBooleanResponse {
  const _$NmBooleanResponseImpl(
      {@JsonKey(name: 'result') required this.result});

  factory _$NmBooleanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NmBooleanResponseImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final bool result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NmBooleanResponse(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NmBooleanResponse'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NmBooleanResponseImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of NmBooleanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NmBooleanResponseImplCopyWith<_$NmBooleanResponseImpl> get copyWith =>
      __$$NmBooleanResponseImplCopyWithImpl<_$NmBooleanResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NmBooleanResponseImplToJson(
      this,
    );
  }
}

abstract class _NmBooleanResponse implements NmBooleanResponse {
  const factory _NmBooleanResponse(
          {@JsonKey(name: 'result') required final bool result}) =
      _$NmBooleanResponseImpl;

  factory _NmBooleanResponse.fromJson(Map<String, dynamic> json) =
      _$NmBooleanResponseImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  bool get result;

  /// Create a copy of NmBooleanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NmBooleanResponseImplCopyWith<_$NmBooleanResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
