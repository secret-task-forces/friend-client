// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeState {
  NoticeList get noticeListResponse => throw _privateConstructorUsedError;
  List<Notice> get noticeList => throw _privateConstructorUsedError;
  NoticeFilter get noticeFilter => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of NoticeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeStateCopyWith<NoticeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeStateCopyWith<$Res> {
  factory $NoticeStateCopyWith(
          NoticeState value, $Res Function(NoticeState) then) =
      _$NoticeStateCopyWithImpl<$Res, NoticeState>;
  @useResult
  $Res call(
      {NoticeList noticeListResponse,
      List<Notice> noticeList,
      NoticeFilter noticeFilter,
      bool isLoading});

  $NoticeListCopyWith<$Res> get noticeListResponse;
}

/// @nodoc
class _$NoticeStateCopyWithImpl<$Res, $Val extends NoticeState>
    implements $NoticeStateCopyWith<$Res> {
  _$NoticeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeListResponse = null,
    Object? noticeList = null,
    Object? noticeFilter = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      noticeListResponse: null == noticeListResponse
          ? _value.noticeListResponse
          : noticeListResponse // ignore: cast_nullable_to_non_nullable
              as NoticeList,
      noticeList: null == noticeList
          ? _value.noticeList
          : noticeList // ignore: cast_nullable_to_non_nullable
              as List<Notice>,
      noticeFilter: null == noticeFilter
          ? _value.noticeFilter
          : noticeFilter // ignore: cast_nullable_to_non_nullable
              as NoticeFilter,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of NoticeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoticeListCopyWith<$Res> get noticeListResponse {
    return $NoticeListCopyWith<$Res>(_value.noticeListResponse, (value) {
      return _then(_value.copyWith(noticeListResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoticeStateImplCopyWith<$Res>
    implements $NoticeStateCopyWith<$Res> {
  factory _$$NoticeStateImplCopyWith(
          _$NoticeStateImpl value, $Res Function(_$NoticeStateImpl) then) =
      __$$NoticeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NoticeList noticeListResponse,
      List<Notice> noticeList,
      NoticeFilter noticeFilter,
      bool isLoading});

  @override
  $NoticeListCopyWith<$Res> get noticeListResponse;
}

/// @nodoc
class __$$NoticeStateImplCopyWithImpl<$Res>
    extends _$NoticeStateCopyWithImpl<$Res, _$NoticeStateImpl>
    implements _$$NoticeStateImplCopyWith<$Res> {
  __$$NoticeStateImplCopyWithImpl(
      _$NoticeStateImpl _value, $Res Function(_$NoticeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeListResponse = null,
    Object? noticeList = null,
    Object? noticeFilter = null,
    Object? isLoading = null,
  }) {
    return _then(_$NoticeStateImpl(
      noticeListResponse: null == noticeListResponse
          ? _value.noticeListResponse
          : noticeListResponse // ignore: cast_nullable_to_non_nullable
              as NoticeList,
      noticeList: null == noticeList
          ? _value._noticeList
          : noticeList // ignore: cast_nullable_to_non_nullable
              as List<Notice>,
      noticeFilter: null == noticeFilter
          ? _value.noticeFilter
          : noticeFilter // ignore: cast_nullable_to_non_nullable
              as NoticeFilter,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NoticeStateImpl implements _NoticeState {
  _$NoticeStateImpl(
      {required this.noticeListResponse,
      required final List<Notice> noticeList,
      this.noticeFilter = NoticeFilter.latest,
      this.isLoading = false})
      : _noticeList = noticeList;

  @override
  final NoticeList noticeListResponse;
  final List<Notice> _noticeList;
  @override
  List<Notice> get noticeList {
    if (_noticeList is EqualUnmodifiableListView) return _noticeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noticeList);
  }

  @override
  @JsonKey()
  final NoticeFilter noticeFilter;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'NoticeState(noticeListResponse: $noticeListResponse, noticeList: $noticeList, noticeFilter: $noticeFilter, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeStateImpl &&
            (identical(other.noticeListResponse, noticeListResponse) ||
                other.noticeListResponse == noticeListResponse) &&
            const DeepCollectionEquality()
                .equals(other._noticeList, _noticeList) &&
            (identical(other.noticeFilter, noticeFilter) ||
                other.noticeFilter == noticeFilter) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      noticeListResponse,
      const DeepCollectionEquality().hash(_noticeList),
      noticeFilter,
      isLoading);

  /// Create a copy of NoticeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeStateImplCopyWith<_$NoticeStateImpl> get copyWith =>
      __$$NoticeStateImplCopyWithImpl<_$NoticeStateImpl>(this, _$identity);
}

abstract class _NoticeState implements NoticeState {
  factory _NoticeState(
      {required final NoticeList noticeListResponse,
      required final List<Notice> noticeList,
      final NoticeFilter noticeFilter,
      final bool isLoading}) = _$NoticeStateImpl;

  @override
  NoticeList get noticeListResponse;
  @override
  List<Notice> get noticeList;
  @override
  NoticeFilter get noticeFilter;
  @override
  bool get isLoading;

  /// Create a copy of NoticeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeStateImplCopyWith<_$NoticeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
