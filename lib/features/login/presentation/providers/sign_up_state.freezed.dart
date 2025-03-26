// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpState _$SignUpStateFromJson(Map<String, dynamic> json) {
  return _SignUpState.fromJson(json);
}

/// @nodoc
mixin _$SignUpState {
  bool get showTermBottomSheet => throw _privateConstructorUsedError;
  bool get ageCheck => throw _privateConstructorUsedError;
  bool get useTermCheck => throw _privateConstructorUsedError;
  bool get privacyCheck => throw _privateConstructorUsedError;
  bool get marketingCheck => throw _privateConstructorUsedError;
  bool get showDialog => throw _privateConstructorUsedError;
  String get dialogTitle => throw _privateConstructorUsedError;
  String get dialogContent => throw _privateConstructorUsedError;
  SignInModel? get signInModel => throw _privateConstructorUsedError;

  /// Serializes this SignUpState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {bool showTermBottomSheet,
      bool ageCheck,
      bool useTermCheck,
      bool privacyCheck,
      bool marketingCheck,
      bool showDialog,
      String dialogTitle,
      String dialogContent,
      SignInModel? signInModel});

  $SignInModelCopyWith<$Res>? get signInModel;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showTermBottomSheet = null,
    Object? ageCheck = null,
    Object? useTermCheck = null,
    Object? privacyCheck = null,
    Object? marketingCheck = null,
    Object? showDialog = null,
    Object? dialogTitle = null,
    Object? dialogContent = null,
    Object? signInModel = freezed,
  }) {
    return _then(_value.copyWith(
      showTermBottomSheet: null == showTermBottomSheet
          ? _value.showTermBottomSheet
          : showTermBottomSheet // ignore: cast_nullable_to_non_nullable
              as bool,
      ageCheck: null == ageCheck
          ? _value.ageCheck
          : ageCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      useTermCheck: null == useTermCheck
          ? _value.useTermCheck
          : useTermCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      privacyCheck: null == privacyCheck
          ? _value.privacyCheck
          : privacyCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      marketingCheck: null == marketingCheck
          ? _value.marketingCheck
          : marketingCheck // ignore: cast_nullable_to_non_nullable
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
      signInModel: freezed == signInModel
          ? _value.signInModel
          : signInModel // ignore: cast_nullable_to_non_nullable
              as SignInModel?,
    ) as $Val);
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignInModelCopyWith<$Res>? get signInModel {
    if (_value.signInModel == null) {
      return null;
    }

    return $SignInModelCopyWith<$Res>(_value.signInModel!, (value) {
      return _then(_value.copyWith(signInModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showTermBottomSheet,
      bool ageCheck,
      bool useTermCheck,
      bool privacyCheck,
      bool marketingCheck,
      bool showDialog,
      String dialogTitle,
      String dialogContent,
      SignInModel? signInModel});

  @override
  $SignInModelCopyWith<$Res>? get signInModel;
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showTermBottomSheet = null,
    Object? ageCheck = null,
    Object? useTermCheck = null,
    Object? privacyCheck = null,
    Object? marketingCheck = null,
    Object? showDialog = null,
    Object? dialogTitle = null,
    Object? dialogContent = null,
    Object? signInModel = freezed,
  }) {
    return _then(_$SignUpStateImpl(
      showTermBottomSheet: null == showTermBottomSheet
          ? _value.showTermBottomSheet
          : showTermBottomSheet // ignore: cast_nullable_to_non_nullable
              as bool,
      ageCheck: null == ageCheck
          ? _value.ageCheck
          : ageCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      useTermCheck: null == useTermCheck
          ? _value.useTermCheck
          : useTermCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      privacyCheck: null == privacyCheck
          ? _value.privacyCheck
          : privacyCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      marketingCheck: null == marketingCheck
          ? _value.marketingCheck
          : marketingCheck // ignore: cast_nullable_to_non_nullable
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
      signInModel: freezed == signInModel
          ? _value.signInModel
          : signInModel // ignore: cast_nullable_to_non_nullable
              as SignInModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpStateImpl extends _SignUpState with DiagnosticableTreeMixin {
  const _$SignUpStateImpl(
      {required this.showTermBottomSheet,
      required this.ageCheck,
      required this.useTermCheck,
      required this.privacyCheck,
      required this.marketingCheck,
      required this.showDialog,
      required this.dialogTitle,
      required this.dialogContent,
      this.signInModel})
      : super._();

  factory _$SignUpStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpStateImplFromJson(json);

  @override
  final bool showTermBottomSheet;
  @override
  final bool ageCheck;
  @override
  final bool useTermCheck;
  @override
  final bool privacyCheck;
  @override
  final bool marketingCheck;
  @override
  final bool showDialog;
  @override
  final String dialogTitle;
  @override
  final String dialogContent;
  @override
  final SignInModel? signInModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState(showTermBottomSheet: $showTermBottomSheet, ageCheck: $ageCheck, useTermCheck: $useTermCheck, privacyCheck: $privacyCheck, marketingCheck: $marketingCheck, showDialog: $showDialog, dialogTitle: $dialogTitle, dialogContent: $dialogContent, signInModel: $signInModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState'))
      ..add(DiagnosticsProperty('showTermBottomSheet', showTermBottomSheet))
      ..add(DiagnosticsProperty('ageCheck', ageCheck))
      ..add(DiagnosticsProperty('useTermCheck', useTermCheck))
      ..add(DiagnosticsProperty('privacyCheck', privacyCheck))
      ..add(DiagnosticsProperty('marketingCheck', marketingCheck))
      ..add(DiagnosticsProperty('showDialog', showDialog))
      ..add(DiagnosticsProperty('dialogTitle', dialogTitle))
      ..add(DiagnosticsProperty('dialogContent', dialogContent))
      ..add(DiagnosticsProperty('signInModel', signInModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.showTermBottomSheet, showTermBottomSheet) ||
                other.showTermBottomSheet == showTermBottomSheet) &&
            (identical(other.ageCheck, ageCheck) ||
                other.ageCheck == ageCheck) &&
            (identical(other.useTermCheck, useTermCheck) ||
                other.useTermCheck == useTermCheck) &&
            (identical(other.privacyCheck, privacyCheck) ||
                other.privacyCheck == privacyCheck) &&
            (identical(other.marketingCheck, marketingCheck) ||
                other.marketingCheck == marketingCheck) &&
            (identical(other.showDialog, showDialog) ||
                other.showDialog == showDialog) &&
            (identical(other.dialogTitle, dialogTitle) ||
                other.dialogTitle == dialogTitle) &&
            (identical(other.dialogContent, dialogContent) ||
                other.dialogContent == dialogContent) &&
            (identical(other.signInModel, signInModel) ||
                other.signInModel == signInModel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      showTermBottomSheet,
      ageCheck,
      useTermCheck,
      privacyCheck,
      marketingCheck,
      showDialog,
      dialogTitle,
      dialogContent,
      signInModel);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpStateImplToJson(
      this,
    );
  }
}

abstract class _SignUpState extends SignUpState {
  const factory _SignUpState(
      {required final bool showTermBottomSheet,
      required final bool ageCheck,
      required final bool useTermCheck,
      required final bool privacyCheck,
      required final bool marketingCheck,
      required final bool showDialog,
      required final String dialogTitle,
      required final String dialogContent,
      final SignInModel? signInModel}) = _$SignUpStateImpl;
  const _SignUpState._() : super._();

  factory _SignUpState.fromJson(Map<String, dynamic> json) =
      _$SignUpStateImpl.fromJson;

  @override
  bool get showTermBottomSheet;
  @override
  bool get ageCheck;
  @override
  bool get useTermCheck;
  @override
  bool get privacyCheck;
  @override
  bool get marketingCheck;
  @override
  bool get showDialog;
  @override
  String get dialogTitle;
  @override
  String get dialogContent;
  @override
  SignInModel? get signInModel;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
