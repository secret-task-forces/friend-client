// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'put_consent_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PutConsentResultModel _$PutConsentResultModelFromJson(
    Map<String, dynamic> json) {
  return _PutConsentResultModel.fromJson(json);
}

/// @nodoc
mixin _$PutConsentResultModel {
  @JsonKey(name: 'idx')
  int? get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribedAds')
  bool? get subscribedAds => throw _privateConstructorUsedError;
  @JsonKey(name: 'notifyProposal')
  bool? get notifyProposal => throw _privateConstructorUsedError;
  @JsonKey(name: 'notifyChat')
  bool? get notifyChat => throw _privateConstructorUsedError;
  @JsonKey(name: 'notifyReview')
  bool? get notifyReview => throw _privateConstructorUsedError;

  /// Serializes this PutConsentResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PutConsentResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PutConsentResultModelCopyWith<PutConsentResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PutConsentResultModelCopyWith<$Res> {
  factory $PutConsentResultModelCopyWith(PutConsentResultModel value,
          $Res Function(PutConsentResultModel) then) =
      _$PutConsentResultModelCopyWithImpl<$Res, PutConsentResultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int? idx,
      @JsonKey(name: 'subscribedAds') bool? subscribedAds,
      @JsonKey(name: 'notifyProposal') bool? notifyProposal,
      @JsonKey(name: 'notifyChat') bool? notifyChat,
      @JsonKey(name: 'notifyReview') bool? notifyReview});
}

/// @nodoc
class _$PutConsentResultModelCopyWithImpl<$Res,
        $Val extends PutConsentResultModel>
    implements $PutConsentResultModelCopyWith<$Res> {
  _$PutConsentResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PutConsentResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = freezed,
    Object? subscribedAds = freezed,
    Object? notifyProposal = freezed,
    Object? notifyChat = freezed,
    Object? notifyReview = freezed,
  }) {
    return _then(_value.copyWith(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribedAds: freezed == subscribedAds
          ? _value.subscribedAds
          : subscribedAds // ignore: cast_nullable_to_non_nullable
              as bool?,
      notifyProposal: freezed == notifyProposal
          ? _value.notifyProposal
          : notifyProposal // ignore: cast_nullable_to_non_nullable
              as bool?,
      notifyChat: freezed == notifyChat
          ? _value.notifyChat
          : notifyChat // ignore: cast_nullable_to_non_nullable
              as bool?,
      notifyReview: freezed == notifyReview
          ? _value.notifyReview
          : notifyReview // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PutConsentResultModelImplCopyWith<$Res>
    implements $PutConsentResultModelCopyWith<$Res> {
  factory _$$PutConsentResultModelImplCopyWith(
          _$PutConsentResultModelImpl value,
          $Res Function(_$PutConsentResultModelImpl) then) =
      __$$PutConsentResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int? idx,
      @JsonKey(name: 'subscribedAds') bool? subscribedAds,
      @JsonKey(name: 'notifyProposal') bool? notifyProposal,
      @JsonKey(name: 'notifyChat') bool? notifyChat,
      @JsonKey(name: 'notifyReview') bool? notifyReview});
}

/// @nodoc
class __$$PutConsentResultModelImplCopyWithImpl<$Res>
    extends _$PutConsentResultModelCopyWithImpl<$Res,
        _$PutConsentResultModelImpl>
    implements _$$PutConsentResultModelImplCopyWith<$Res> {
  __$$PutConsentResultModelImplCopyWithImpl(_$PutConsentResultModelImpl _value,
      $Res Function(_$PutConsentResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PutConsentResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = freezed,
    Object? subscribedAds = freezed,
    Object? notifyProposal = freezed,
    Object? notifyChat = freezed,
    Object? notifyReview = freezed,
  }) {
    return _then(_$PutConsentResultModelImpl(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribedAds: freezed == subscribedAds
          ? _value.subscribedAds
          : subscribedAds // ignore: cast_nullable_to_non_nullable
              as bool?,
      notifyProposal: freezed == notifyProposal
          ? _value.notifyProposal
          : notifyProposal // ignore: cast_nullable_to_non_nullable
              as bool?,
      notifyChat: freezed == notifyChat
          ? _value.notifyChat
          : notifyChat // ignore: cast_nullable_to_non_nullable
              as bool?,
      notifyReview: freezed == notifyReview
          ? _value.notifyReview
          : notifyReview // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PutConsentResultModelImpl
    with DiagnosticableTreeMixin
    implements _PutConsentResultModel {
  const _$PutConsentResultModelImpl(
      {@JsonKey(name: 'idx') this.idx,
      @JsonKey(name: 'subscribedAds') this.subscribedAds,
      @JsonKey(name: 'notifyProposal') this.notifyProposal,
      @JsonKey(name: 'notifyChat') this.notifyChat,
      @JsonKey(name: 'notifyReview') this.notifyReview});

  factory _$PutConsentResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PutConsentResultModelImplFromJson(json);

  @override
  @JsonKey(name: 'idx')
  final int? idx;
  @override
  @JsonKey(name: 'subscribedAds')
  final bool? subscribedAds;
  @override
  @JsonKey(name: 'notifyProposal')
  final bool? notifyProposal;
  @override
  @JsonKey(name: 'notifyChat')
  final bool? notifyChat;
  @override
  @JsonKey(name: 'notifyReview')
  final bool? notifyReview;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PutConsentResultModel(idx: $idx, subscribedAds: $subscribedAds, notifyProposal: $notifyProposal, notifyChat: $notifyChat, notifyReview: $notifyReview)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PutConsentResultModel'))
      ..add(DiagnosticsProperty('idx', idx))
      ..add(DiagnosticsProperty('subscribedAds', subscribedAds))
      ..add(DiagnosticsProperty('notifyProposal', notifyProposal))
      ..add(DiagnosticsProperty('notifyChat', notifyChat))
      ..add(DiagnosticsProperty('notifyReview', notifyReview));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutConsentResultModelImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
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
  int get hashCode => Object.hash(runtimeType, idx, subscribedAds,
      notifyProposal, notifyChat, notifyReview);

  /// Create a copy of PutConsentResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PutConsentResultModelImplCopyWith<_$PutConsentResultModelImpl>
      get copyWith => __$$PutConsentResultModelImplCopyWithImpl<
          _$PutConsentResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PutConsentResultModelImplToJson(
      this,
    );
  }
}

abstract class _PutConsentResultModel implements PutConsentResultModel {
  const factory _PutConsentResultModel(
          {@JsonKey(name: 'idx') final int? idx,
          @JsonKey(name: 'subscribedAds') final bool? subscribedAds,
          @JsonKey(name: 'notifyProposal') final bool? notifyProposal,
          @JsonKey(name: 'notifyChat') final bool? notifyChat,
          @JsonKey(name: 'notifyReview') final bool? notifyReview}) =
      _$PutConsentResultModelImpl;

  factory _PutConsentResultModel.fromJson(Map<String, dynamic> json) =
      _$PutConsentResultModelImpl.fromJson;

  @override
  @JsonKey(name: 'idx')
  int? get idx;
  @override
  @JsonKey(name: 'subscribedAds')
  bool? get subscribedAds;
  @override
  @JsonKey(name: 'notifyProposal')
  bool? get notifyProposal;
  @override
  @JsonKey(name: 'notifyChat')
  bool? get notifyChat;
  @override
  @JsonKey(name: 'notifyReview')
  bool? get notifyReview;

  /// Create a copy of PutConsentResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PutConsentResultModelImplCopyWith<_$PutConsentResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
