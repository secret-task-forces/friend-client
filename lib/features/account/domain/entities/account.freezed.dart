// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Account {
  bool get loggedIn => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  SocialType? get socialType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  NotificationConsent? get notificationConsent =>
      throw _privateConstructorUsedError;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {bool loggedIn,
      int? id,
      String? email,
      SocialType? socialType,
      String? name,
      NotificationConsent? notificationConsent});

  $NotificationConsentCopyWith<$Res>? get notificationConsent;
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
    Object? id = freezed,
    Object? email = freezed,
    Object? socialType = freezed,
    Object? name = freezed,
    Object? notificationConsent = freezed,
  }) {
    return _then(_value.copyWith(
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      socialType: freezed == socialType
          ? _value.socialType
          : socialType // ignore: cast_nullable_to_non_nullable
              as SocialType?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationConsent: freezed == notificationConsent
          ? _value.notificationConsent
          : notificationConsent // ignore: cast_nullable_to_non_nullable
              as NotificationConsent?,
    ) as $Val);
  }

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationConsentCopyWith<$Res>? get notificationConsent {
    if (_value.notificationConsent == null) {
      return null;
    }

    return $NotificationConsentCopyWith<$Res>(_value.notificationConsent!,
        (value) {
      return _then(_value.copyWith(notificationConsent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loggedIn,
      int? id,
      String? email,
      SocialType? socialType,
      String? name,
      NotificationConsent? notificationConsent});

  @override
  $NotificationConsentCopyWith<$Res>? get notificationConsent;
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
    Object? id = freezed,
    Object? email = freezed,
    Object? socialType = freezed,
    Object? name = freezed,
    Object? notificationConsent = freezed,
  }) {
    return _then(_$AccountImpl(
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      socialType: freezed == socialType
          ? _value.socialType
          : socialType // ignore: cast_nullable_to_non_nullable
              as SocialType?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationConsent: freezed == notificationConsent
          ? _value.notificationConsent
          : notificationConsent // ignore: cast_nullable_to_non_nullable
              as NotificationConsent?,
    ));
  }
}

/// @nodoc

class _$AccountImpl extends _Account with DiagnosticableTreeMixin {
  const _$AccountImpl(
      {required this.loggedIn,
      this.id,
      this.email,
      this.socialType,
      this.name,
      required this.notificationConsent})
      : super._();

  @override
  final bool loggedIn;
  @override
  final int? id;
  @override
  final String? email;
  @override
  final SocialType? socialType;
  @override
  final String? name;
  @override
  final NotificationConsent? notificationConsent;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Account(loggedIn: $loggedIn, id: $id, email: $email, socialType: $socialType, name: $name, notificationConsent: $notificationConsent)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Account'))
      ..add(DiagnosticsProperty('loggedIn', loggedIn))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('socialType', socialType))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('notificationConsent', notificationConsent));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.loggedIn, loggedIn) ||
                other.loggedIn == loggedIn) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.socialType, socialType) ||
                other.socialType == socialType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.notificationConsent, notificationConsent) ||
                other.notificationConsent == notificationConsent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loggedIn, id, email, socialType, name, notificationConsent);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);
}

abstract class _Account extends Account {
  const factory _Account(
      {required final bool loggedIn,
      final int? id,
      final String? email,
      final SocialType? socialType,
      final String? name,
      required final NotificationConsent? notificationConsent}) = _$AccountImpl;
  const _Account._() : super._();

  @override
  bool get loggedIn;
  @override
  int? get id;
  @override
  String? get email;
  @override
  SocialType? get socialType;
  @override
  String? get name;
  @override
  NotificationConsent? get notificationConsent;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
