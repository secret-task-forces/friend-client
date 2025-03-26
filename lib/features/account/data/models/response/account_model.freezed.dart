// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) {
  return _AccountModel.fromJson(json);
}

/// @nodoc
mixin _$AccountModel {
  @JsonKey(name: 'loggedIn')
  bool get loggedIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'idx')
  int? get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'socialType')
  String? get socialType => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribedAds')
  bool get subscribedAds => throw _privateConstructorUsedError;
  @JsonKey(name: 'notifyProposal')
  bool get notifyProposal => throw _privateConstructorUsedError;
  @JsonKey(name: 'notifyChat')
  bool get notifyChat => throw _privateConstructorUsedError;
  @JsonKey(name: 'notifyReview')
  bool get notifyReview => throw _privateConstructorUsedError;

  /// Serializes this AccountModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res, AccountModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'loggedIn') bool loggedIn,
      @JsonKey(name: 'idx') int? idx,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'socialType') String? socialType,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'subscribedAds') bool subscribedAds,
      @JsonKey(name: 'notifyProposal') bool notifyProposal,
      @JsonKey(name: 'notifyChat') bool notifyChat,
      @JsonKey(name: 'notifyReview') bool notifyReview});
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res, $Val extends AccountModel>
    implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
    Object? idx = freezed,
    Object? email = freezed,
    Object? socialType = freezed,
    Object? name = freezed,
    Object? subscribedAds = null,
    Object? notifyProposal = null,
    Object? notifyChat = null,
    Object? notifyReview = null,
  }) {
    return _then(_value.copyWith(
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      socialType: freezed == socialType
          ? _value.socialType
          : socialType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribedAds: null == subscribedAds
          ? _value.subscribedAds
          : subscribedAds // ignore: cast_nullable_to_non_nullable
              as bool,
      notifyProposal: null == notifyProposal
          ? _value.notifyProposal
          : notifyProposal // ignore: cast_nullable_to_non_nullable
              as bool,
      notifyChat: null == notifyChat
          ? _value.notifyChat
          : notifyChat // ignore: cast_nullable_to_non_nullable
              as bool,
      notifyReview: null == notifyReview
          ? _value.notifyReview
          : notifyReview // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountModelImplCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$$AccountModelImplCopyWith(
          _$AccountModelImpl value, $Res Function(_$AccountModelImpl) then) =
      __$$AccountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'loggedIn') bool loggedIn,
      @JsonKey(name: 'idx') int? idx,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'socialType') String? socialType,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'subscribedAds') bool subscribedAds,
      @JsonKey(name: 'notifyProposal') bool notifyProposal,
      @JsonKey(name: 'notifyChat') bool notifyChat,
      @JsonKey(name: 'notifyReview') bool notifyReview});
}

/// @nodoc
class __$$AccountModelImplCopyWithImpl<$Res>
    extends _$AccountModelCopyWithImpl<$Res, _$AccountModelImpl>
    implements _$$AccountModelImplCopyWith<$Res> {
  __$$AccountModelImplCopyWithImpl(
      _$AccountModelImpl _value, $Res Function(_$AccountModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
    Object? idx = freezed,
    Object? email = freezed,
    Object? socialType = freezed,
    Object? name = freezed,
    Object? subscribedAds = null,
    Object? notifyProposal = null,
    Object? notifyChat = null,
    Object? notifyReview = null,
  }) {
    return _then(_$AccountModelImpl(
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      socialType: freezed == socialType
          ? _value.socialType
          : socialType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribedAds: null == subscribedAds
          ? _value.subscribedAds
          : subscribedAds // ignore: cast_nullable_to_non_nullable
              as bool,
      notifyProposal: null == notifyProposal
          ? _value.notifyProposal
          : notifyProposal // ignore: cast_nullable_to_non_nullable
              as bool,
      notifyChat: null == notifyChat
          ? _value.notifyChat
          : notifyChat // ignore: cast_nullable_to_non_nullable
              as bool,
      notifyReview: null == notifyReview
          ? _value.notifyReview
          : notifyReview // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountModelImpl with DiagnosticableTreeMixin implements _AccountModel {
  const _$AccountModelImpl(
      {@JsonKey(name: 'loggedIn') required this.loggedIn,
      @JsonKey(name: 'idx') this.idx,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'socialType') this.socialType,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'subscribedAds') required this.subscribedAds,
      @JsonKey(name: 'notifyProposal') required this.notifyProposal,
      @JsonKey(name: 'notifyChat') required this.notifyChat,
      @JsonKey(name: 'notifyReview') required this.notifyReview});

  factory _$AccountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountModelImplFromJson(json);

  @override
  @JsonKey(name: 'loggedIn')
  final bool loggedIn;
  @override
  @JsonKey(name: 'idx')
  final int? idx;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'socialType')
  final String? socialType;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'subscribedAds')
  final bool subscribedAds;
  @override
  @JsonKey(name: 'notifyProposal')
  final bool notifyProposal;
  @override
  @JsonKey(name: 'notifyChat')
  final bool notifyChat;
  @override
  @JsonKey(name: 'notifyReview')
  final bool notifyReview;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountModel(loggedIn: $loggedIn, idx: $idx, email: $email, socialType: $socialType, name: $name, subscribedAds: $subscribedAds, notifyProposal: $notifyProposal, notifyChat: $notifyChat, notifyReview: $notifyReview)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountModel'))
      ..add(DiagnosticsProperty('loggedIn', loggedIn))
      ..add(DiagnosticsProperty('idx', idx))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('socialType', socialType))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('subscribedAds', subscribedAds))
      ..add(DiagnosticsProperty('notifyProposal', notifyProposal))
      ..add(DiagnosticsProperty('notifyChat', notifyChat))
      ..add(DiagnosticsProperty('notifyReview', notifyReview));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountModelImpl &&
            (identical(other.loggedIn, loggedIn) ||
                other.loggedIn == loggedIn) &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.socialType, socialType) ||
                other.socialType == socialType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.subscribedAds, subscribedAds) ||
                other.subscribedAds == subscribedAds) &&
            (identical(other.notifyProposal, notifyProposal) ||
                other.notifyProposal == notifyProposal) &&
            (identical(other.notifyChat, notifyChat) ||
                other.notifyChat == notifyChat) &&
            (identical(other.notifyReview, notifyReview) ||
                other.notifyReview == notifyReview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, loggedIn, idx, email, socialType,
      name, subscribedAds, notifyProposal, notifyChat, notifyReview);

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountModelImplCopyWith<_$AccountModelImpl> get copyWith =>
      __$$AccountModelImplCopyWithImpl<_$AccountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountModelImplToJson(
      this,
    );
  }
}

abstract class _AccountModel implements AccountModel {
  const factory _AccountModel(
          {@JsonKey(name: 'loggedIn') required final bool loggedIn,
          @JsonKey(name: 'idx') final int? idx,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'socialType') final String? socialType,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'subscribedAds') required final bool subscribedAds,
          @JsonKey(name: 'notifyProposal') required final bool notifyProposal,
          @JsonKey(name: 'notifyChat') required final bool notifyChat,
          @JsonKey(name: 'notifyReview') required final bool notifyReview}) =
      _$AccountModelImpl;

  factory _AccountModel.fromJson(Map<String, dynamic> json) =
      _$AccountModelImpl.fromJson;

  @override
  @JsonKey(name: 'loggedIn')
  bool get loggedIn;
  @override
  @JsonKey(name: 'idx')
  int? get idx;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'socialType')
  String? get socialType;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'subscribedAds')
  bool get subscribedAds;
  @override
  @JsonKey(name: 'notifyProposal')
  bool get notifyProposal;
  @override
  @JsonKey(name: 'notifyChat')
  bool get notifyChat;
  @override
  @JsonKey(name: 'notifyReview')
  bool get notifyReview;

  /// Create a copy of AccountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountModelImplCopyWith<_$AccountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
