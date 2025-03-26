// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginState _$LoginStateFromJson(Map<String, dynamic> json) {
  return _LoginState.fromJson(json);
}

/// @nodoc
mixin _$LoginState {
  bool get showOtherButton => throw _privateConstructorUsedError;
  bool get showDialog => throw _privateConstructorUsedError;
  String get dialogTitle => throw _privateConstructorUsedError;
  String get dialogContent => throw _privateConstructorUsedError;
  bool get isTestLogin => throw _privateConstructorUsedError;

  /// Serializes this LoginState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool showOtherButton,
      bool showDialog,
      String dialogTitle,
      String dialogContent,
      bool isTestLogin});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showOtherButton = null,
    Object? showDialog = null,
    Object? dialogTitle = null,
    Object? dialogContent = null,
    Object? isTestLogin = null,
  }) {
    return _then(_value.copyWith(
      showOtherButton: null == showOtherButton
          ? _value.showOtherButton
          : showOtherButton // ignore: cast_nullable_to_non_nullable
              as bool,
      showDialog: null == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      dialogTitle: null == dialogTitle
          ? _value.dialogTitle
          : dialogTitle // ignore: cast_nullable_to_non_nullable
              as String,
      dialogContent: null == dialogContent
          ? _value.dialogContent
          : dialogContent // ignore: cast_nullable_to_non_nullable
              as String,
      isTestLogin: null == isTestLogin
          ? _value.isTestLogin
          : isTestLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showOtherButton,
      bool showDialog,
      String dialogTitle,
      String dialogContent,
      bool isTestLogin});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showOtherButton = null,
    Object? showDialog = null,
    Object? dialogTitle = null,
    Object? dialogContent = null,
    Object? isTestLogin = null,
  }) {
    return _then(_$LoginStateImpl(
      showOtherButton: null == showOtherButton
          ? _value.showOtherButton
          : showOtherButton // ignore: cast_nullable_to_non_nullable
              as bool,
      showDialog: null == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as bool,
      dialogTitle: null == dialogTitle
          ? _value.dialogTitle
          : dialogTitle // ignore: cast_nullable_to_non_nullable
              as String,
      dialogContent: null == dialogContent
          ? _value.dialogContent
          : dialogContent // ignore: cast_nullable_to_non_nullable
              as String,
      isTestLogin: null == isTestLogin
          ? _value.isTestLogin
          : isTestLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginStateImpl extends _LoginState {
  const _$LoginStateImpl(
      {required this.showOtherButton,
      required this.showDialog,
      required this.dialogTitle,
      required this.dialogContent,
      required this.isTestLogin})
      : super._();

  factory _$LoginStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginStateImplFromJson(json);

  @override
  final bool showOtherButton;
  @override
  final bool showDialog;
  @override
  final String dialogTitle;
  @override
  final String dialogContent;
  @override
  final bool isTestLogin;

  @override
  String toString() {
    return 'LoginState(showOtherButton: $showOtherButton, showDialog: $showDialog, dialogTitle: $dialogTitle, dialogContent: $dialogContent, isTestLogin: $isTestLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.showOtherButton, showOtherButton) ||
                other.showOtherButton == showOtherButton) &&
            (identical(other.showDialog, showDialog) ||
                other.showDialog == showDialog) &&
            (identical(other.dialogTitle, dialogTitle) ||
                other.dialogTitle == dialogTitle) &&
            (identical(other.dialogContent, dialogContent) ||
                other.dialogContent == dialogContent) &&
            (identical(other.isTestLogin, isTestLogin) ||
                other.isTestLogin == isTestLogin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, showOtherButton, showDialog,
      dialogTitle, dialogContent, isTestLogin);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginStateImplToJson(
      this,
    );
  }
}

abstract class _LoginState extends LoginState {
  const factory _LoginState(
      {required final bool showOtherButton,
      required final bool showDialog,
      required final String dialogTitle,
      required final String dialogContent,
      required final bool isTestLogin}) = _$LoginStateImpl;
  const _LoginState._() : super._();

  factory _LoginState.fromJson(Map<String, dynamic> json) =
      _$LoginStateImpl.fromJson;

  @override
  bool get showOtherButton;
  @override
  bool get showDialog;
  @override
  String get dialogTitle;
  @override
  String get dialogContent;
  @override
  bool get isTestLogin;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
