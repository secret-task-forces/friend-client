// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoticeModel _$NoticeModelFromJson(Map<String, dynamic> json) {
  return _NoticeModel.fromJson(json);
}

/// @nodoc
mixin _$NoticeModel {
  @JsonKey(name: 'idx')
  int get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'publishedAt')
  int get publishedAt => throw _privateConstructorUsedError;

  /// Serializes this NoticeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeModelCopyWith<NoticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeModelCopyWith<$Res> {
  factory $NoticeModelCopyWith(
          NoticeModel value, $Res Function(NoticeModel) then) =
      _$NoticeModelCopyWithImpl<$Res, NoticeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'publishedAt') int publishedAt});
}

/// @nodoc
class _$NoticeModelCopyWithImpl<$Res, $Val extends NoticeModel>
    implements $NoticeModelCopyWith<$Res> {
  _$NoticeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? title = null,
    Object? content = null,
    Object? publishedAt = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticeModelImplCopyWith<$Res>
    implements $NoticeModelCopyWith<$Res> {
  factory _$$NoticeModelImplCopyWith(
          _$NoticeModelImpl value, $Res Function(_$NoticeModelImpl) then) =
      __$$NoticeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'publishedAt') int publishedAt});
}

/// @nodoc
class __$$NoticeModelImplCopyWithImpl<$Res>
    extends _$NoticeModelCopyWithImpl<$Res, _$NoticeModelImpl>
    implements _$$NoticeModelImplCopyWith<$Res> {
  __$$NoticeModelImplCopyWithImpl(
      _$NoticeModelImpl _value, $Res Function(_$NoticeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? title = null,
    Object? content = null,
    Object? publishedAt = null,
  }) {
    return _then(_$NoticeModelImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$NoticeModelImpl with DiagnosticableTreeMixin implements _NoticeModel {
  const _$NoticeModelImpl(
      {@JsonKey(name: 'idx') required this.idx,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'publishedAt') required this.publishedAt});

  factory _$NoticeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticeModelImplFromJson(json);

  @override
  @JsonKey(name: 'idx')
  final int idx;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'publishedAt')
  final int publishedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoticeModel(idx: $idx, title: $title, content: $content, publishedAt: $publishedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoticeModel'))
      ..add(DiagnosticsProperty('idx', idx))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('publishedAt', publishedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeModelImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idx, title, content, publishedAt);

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeModelImplCopyWith<_$NoticeModelImpl> get copyWith =>
      __$$NoticeModelImplCopyWithImpl<_$NoticeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeModelImplToJson(
      this,
    );
  }
}

abstract class _NoticeModel implements NoticeModel {
  const factory _NoticeModel(
          {@JsonKey(name: 'idx') required final int idx,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'content') required final String content,
          @JsonKey(name: 'publishedAt') required final int publishedAt}) =
      _$NoticeModelImpl;

  factory _NoticeModel.fromJson(Map<String, dynamic> json) =
      _$NoticeModelImpl.fromJson;

  @override
  @JsonKey(name: 'idx')
  int get idx;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'publishedAt')
  int get publishedAt;

  /// Create a copy of NoticeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeModelImplCopyWith<_$NoticeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
