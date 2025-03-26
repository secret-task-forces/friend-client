// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FaqListResponse _$FaqListResponseFromJson(Map<String, dynamic> json) {
  return _FaqListResponse.fromJson(json);
}

/// @nodoc
mixin _$FaqListResponse {
  @JsonKey(name: 'totalPage')
  int get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentPage')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Faq> get data => throw _privateConstructorUsedError;

  /// Serializes this FaqListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FaqListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqListResponseCopyWith<FaqListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqListResponseCopyWith<$Res> {
  factory $FaqListResponseCopyWith(
          FaqListResponse value, $Res Function(FaqListResponse) then) =
      _$FaqListResponseCopyWithImpl<$Res, FaqListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'totalCount') int totalCount,
      @JsonKey(name: 'currentPage') int currentPage,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'data') List<Faq> data});
}

/// @nodoc
class _$FaqListResponseCopyWithImpl<$Res, $Val extends FaqListResponse>
    implements $FaqListResponseCopyWith<$Res> {
  _$FaqListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPage = null,
    Object? totalCount = null,
    Object? currentPage = null,
    Object? size = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Faq>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqListResponseImplCopyWith<$Res>
    implements $FaqListResponseCopyWith<$Res> {
  factory _$$FaqListResponseImplCopyWith(_$FaqListResponseImpl value,
          $Res Function(_$FaqListResponseImpl) then) =
      __$$FaqListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'totalCount') int totalCount,
      @JsonKey(name: 'currentPage') int currentPage,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'data') List<Faq> data});
}

/// @nodoc
class __$$FaqListResponseImplCopyWithImpl<$Res>
    extends _$FaqListResponseCopyWithImpl<$Res, _$FaqListResponseImpl>
    implements _$$FaqListResponseImplCopyWith<$Res> {
  __$$FaqListResponseImplCopyWithImpl(
      _$FaqListResponseImpl _value, $Res Function(_$FaqListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPage = null,
    Object? totalCount = null,
    Object? currentPage = null,
    Object? size = null,
    Object? data = null,
  }) {
    return _then(_$FaqListResponseImpl(
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Faq>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqListResponseImpl
    with DiagnosticableTreeMixin
    implements _FaqListResponse {
  const _$FaqListResponseImpl(
      {@JsonKey(name: 'totalPage') required this.totalPage,
      @JsonKey(name: 'totalCount') required this.totalCount,
      @JsonKey(name: 'currentPage') required this.currentPage,
      @JsonKey(name: 'size') required this.size,
      @JsonKey(name: 'data') required final List<Faq> data})
      : _data = data;

  factory _$FaqListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqListResponseImplFromJson(json);

  @override
  @JsonKey(name: 'totalPage')
  final int totalPage;
  @override
  @JsonKey(name: 'totalCount')
  final int totalCount;
  @override
  @JsonKey(name: 'currentPage')
  final int currentPage;
  @override
  @JsonKey(name: 'size')
  final int size;
  final List<Faq> _data;
  @override
  @JsonKey(name: 'data')
  List<Faq> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FaqListResponse(totalPage: $totalPage, totalCount: $totalCount, currentPage: $currentPage, size: $size, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FaqListResponse'))
      ..add(DiagnosticsProperty('totalPage', totalPage))
      ..add(DiagnosticsProperty('totalCount', totalCount))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqListResponseImpl &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalPage, totalCount,
      currentPage, size, const DeepCollectionEquality().hash(_data));

  /// Create a copy of FaqListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqListResponseImplCopyWith<_$FaqListResponseImpl> get copyWith =>
      __$$FaqListResponseImplCopyWithImpl<_$FaqListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqListResponseImplToJson(
      this,
    );
  }
}

abstract class _FaqListResponse implements FaqListResponse {
  const factory _FaqListResponse(
          {@JsonKey(name: 'totalPage') required final int totalPage,
          @JsonKey(name: 'totalCount') required final int totalCount,
          @JsonKey(name: 'currentPage') required final int currentPage,
          @JsonKey(name: 'size') required final int size,
          @JsonKey(name: 'data') required final List<Faq> data}) =
      _$FaqListResponseImpl;

  factory _FaqListResponse.fromJson(Map<String, dynamic> json) =
      _$FaqListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'totalPage')
  int get totalPage;
  @override
  @JsonKey(name: 'totalCount')
  int get totalCount;
  @override
  @JsonKey(name: 'currentPage')
  int get currentPage;
  @override
  @JsonKey(name: 'size')
  int get size;
  @override
  @JsonKey(name: 'data')
  List<Faq> get data;

  /// Create a copy of FaqListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqListResponseImplCopyWith<_$FaqListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Faq _$FaqFromJson(Map<String, dynamic> json) {
  return _Faq.fromJson(json);
}

/// @nodoc
mixin _$Faq {
  @JsonKey(name: 'idx')
  int get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'question')
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer')
  String get answer => throw _privateConstructorUsedError;
  @JsonKey(name: 'publishedAt')
  int get publishedAt => throw _privateConstructorUsedError;

  /// Serializes this Faq to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Faq
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqCopyWith<Faq> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqCopyWith<$Res> {
  factory $FaqCopyWith(Faq value, $Res Function(Faq) then) =
      _$FaqCopyWithImpl<$Res, Faq>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'question') String question,
      @JsonKey(name: 'answer') String answer,
      @JsonKey(name: 'publishedAt') int publishedAt});
}

/// @nodoc
class _$FaqCopyWithImpl<$Res, $Val extends Faq> implements $FaqCopyWith<$Res> {
  _$FaqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Faq
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? question = null,
    Object? answer = null,
    Object? publishedAt = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqImplCopyWith<$Res> implements $FaqCopyWith<$Res> {
  factory _$$FaqImplCopyWith(_$FaqImpl value, $Res Function(_$FaqImpl) then) =
      __$$FaqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'question') String question,
      @JsonKey(name: 'answer') String answer,
      @JsonKey(name: 'publishedAt') int publishedAt});
}

/// @nodoc
class __$$FaqImplCopyWithImpl<$Res> extends _$FaqCopyWithImpl<$Res, _$FaqImpl>
    implements _$$FaqImplCopyWith<$Res> {
  __$$FaqImplCopyWithImpl(_$FaqImpl _value, $Res Function(_$FaqImpl) _then)
      : super(_value, _then);

  /// Create a copy of Faq
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? question = null,
    Object? answer = null,
    Object? publishedAt = null,
  }) {
    return _then(_$FaqImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqImpl with DiagnosticableTreeMixin implements _Faq {
  const _$FaqImpl(
      {@JsonKey(name: 'idx') required this.idx,
      @JsonKey(name: 'question') required this.question,
      @JsonKey(name: 'answer') required this.answer,
      @JsonKey(name: 'publishedAt') required this.publishedAt});

  factory _$FaqImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqImplFromJson(json);

  @override
  @JsonKey(name: 'idx')
  final int idx;
  @override
  @JsonKey(name: 'question')
  final String question;
  @override
  @JsonKey(name: 'answer')
  final String answer;
  @override
  @JsonKey(name: 'publishedAt')
  final int publishedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Faq(idx: $idx, question: $question, answer: $answer, publishedAt: $publishedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Faq'))
      ..add(DiagnosticsProperty('idx', idx))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('answer', answer))
      ..add(DiagnosticsProperty('publishedAt', publishedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idx, question, answer, publishedAt);

  /// Create a copy of Faq
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqImplCopyWith<_$FaqImpl> get copyWith =>
      __$$FaqImplCopyWithImpl<_$FaqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqImplToJson(
      this,
    );
  }
}

abstract class _Faq implements Faq {
  const factory _Faq(
          {@JsonKey(name: 'idx') required final int idx,
          @JsonKey(name: 'question') required final String question,
          @JsonKey(name: 'answer') required final String answer,
          @JsonKey(name: 'publishedAt') required final int publishedAt}) =
      _$FaqImpl;

  factory _Faq.fromJson(Map<String, dynamic> json) = _$FaqImpl.fromJson;

  @override
  @JsonKey(name: 'idx')
  int get idx;
  @override
  @JsonKey(name: 'question')
  String get question;
  @override
  @JsonKey(name: 'answer')
  String get answer;
  @override
  @JsonKey(name: 'publishedAt')
  int get publishedAt;

  /// Create a copy of Faq
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqImplCopyWith<_$FaqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
