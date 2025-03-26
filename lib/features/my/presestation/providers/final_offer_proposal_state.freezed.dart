// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'final_offer_proposal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinalOfferProposalState {
  List<FinalOfferProposal> get finalOfferProposalList =>
      throw _privateConstructorUsedError;

  /// Create a copy of FinalOfferProposalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinalOfferProposalStateCopyWith<FinalOfferProposalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinalOfferProposalStateCopyWith<$Res> {
  factory $FinalOfferProposalStateCopyWith(FinalOfferProposalState value,
          $Res Function(FinalOfferProposalState) then) =
      _$FinalOfferProposalStateCopyWithImpl<$Res, FinalOfferProposalState>;
  @useResult
  $Res call({List<FinalOfferProposal> finalOfferProposalList});
}

/// @nodoc
class _$FinalOfferProposalStateCopyWithImpl<$Res,
        $Val extends FinalOfferProposalState>
    implements $FinalOfferProposalStateCopyWith<$Res> {
  _$FinalOfferProposalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinalOfferProposalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalOfferProposalList = null,
  }) {
    return _then(_value.copyWith(
      finalOfferProposalList: null == finalOfferProposalList
          ? _value.finalOfferProposalList
          : finalOfferProposalList // ignore: cast_nullable_to_non_nullable
              as List<FinalOfferProposal>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinalOfferProposalStateImplCopyWith<$Res>
    implements $FinalOfferProposalStateCopyWith<$Res> {
  factory _$$FinalOfferProposalStateImplCopyWith(
          _$FinalOfferProposalStateImpl value,
          $Res Function(_$FinalOfferProposalStateImpl) then) =
      __$$FinalOfferProposalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FinalOfferProposal> finalOfferProposalList});
}

/// @nodoc
class __$$FinalOfferProposalStateImplCopyWithImpl<$Res>
    extends _$FinalOfferProposalStateCopyWithImpl<$Res,
        _$FinalOfferProposalStateImpl>
    implements _$$FinalOfferProposalStateImplCopyWith<$Res> {
  __$$FinalOfferProposalStateImplCopyWithImpl(
      _$FinalOfferProposalStateImpl _value,
      $Res Function(_$FinalOfferProposalStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinalOfferProposalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalOfferProposalList = null,
  }) {
    return _then(_$FinalOfferProposalStateImpl(
      finalOfferProposalList: null == finalOfferProposalList
          ? _value._finalOfferProposalList
          : finalOfferProposalList // ignore: cast_nullable_to_non_nullable
              as List<FinalOfferProposal>,
    ));
  }
}

/// @nodoc

class _$FinalOfferProposalStateImpl implements _FinalOfferProposalState {
  const _$FinalOfferProposalStateImpl(
      {final List<FinalOfferProposal> finalOfferProposalList = const []})
      : _finalOfferProposalList = finalOfferProposalList;

  final List<FinalOfferProposal> _finalOfferProposalList;
  @override
  @JsonKey()
  List<FinalOfferProposal> get finalOfferProposalList {
    if (_finalOfferProposalList is EqualUnmodifiableListView)
      return _finalOfferProposalList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_finalOfferProposalList);
  }

  @override
  String toString() {
    return 'FinalOfferProposalState(finalOfferProposalList: $finalOfferProposalList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinalOfferProposalStateImpl &&
            const DeepCollectionEquality().equals(
                other._finalOfferProposalList, _finalOfferProposalList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_finalOfferProposalList));

  /// Create a copy of FinalOfferProposalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinalOfferProposalStateImplCopyWith<_$FinalOfferProposalStateImpl>
      get copyWith => __$$FinalOfferProposalStateImplCopyWithImpl<
          _$FinalOfferProposalStateImpl>(this, _$identity);
}

abstract class _FinalOfferProposalState implements FinalOfferProposalState {
  const factory _FinalOfferProposalState(
          {final List<FinalOfferProposal> finalOfferProposalList}) =
      _$FinalOfferProposalStateImpl;

  @override
  List<FinalOfferProposal> get finalOfferProposalList;

  /// Create a copy of FinalOfferProposalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinalOfferProposalStateImplCopyWith<_$FinalOfferProposalStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
