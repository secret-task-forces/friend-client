// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoticeListModel _$NoticeListModelFromJson(Map<String, dynamic> json) {
  return _NoticeListModel.fromJson(json);
}

/// @nodoc
mixin _$NoticeListModel {
  @JsonKey(name: 'totalPage')
  int get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentPage')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<NoticeModel> get data => throw _privateConstructorUsedError;

  /// Serializes this NoticeListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoticeListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeListModelCopyWith<NoticeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeListModelCopyWith<$Res> {
  factory $NoticeListModelCopyWith(
          NoticeListModel value, $Res Function(NoticeListModel) then) =
      _$NoticeListModelCopyWithImpl<$Res, NoticeListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'totalCount') int totalCount,
      @JsonKey(name: 'currentPage') int currentPage,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'data') List<NoticeModel> data});
}

/// @nodoc
class _$NoticeListModelCopyWithImpl<$Res, $Val extends NoticeListModel>
    implements $NoticeListModelCopyWith<$Res> {
  _$NoticeListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeListModel
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
              as List<NoticeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticeListModelImplCopyWith<$Res>
    implements $NoticeListModelCopyWith<$Res> {
  factory _$$NoticeListModelImplCopyWith(_$NoticeListModelImpl value,
          $Res Function(_$NoticeListModelImpl) then) =
      __$$NoticeListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'totalCount') int totalCount,
      @JsonKey(name: 'currentPage') int currentPage,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'data') List<NoticeModel> data});
}

/// @nodoc
class __$$NoticeListModelImplCopyWithImpl<$Res>
    extends _$NoticeListModelCopyWithImpl<$Res, _$NoticeListModelImpl>
    implements _$$NoticeListModelImplCopyWith<$Res> {
  __$$NoticeListModelImplCopyWithImpl(
      _$NoticeListModelImpl _value, $Res Function(_$NoticeListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeListModel
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
    return _then(_$NoticeListModelImpl(
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
              as List<NoticeModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoticeListModelImpl
    with DiagnosticableTreeMixin
    implements _NoticeListModel {
  const _$NoticeListModelImpl(
      {@JsonKey(name: 'totalPage') required this.totalPage,
      @JsonKey(name: 'totalCount') required this.totalCount,
      @JsonKey(name: 'currentPage') required this.currentPage,
      @JsonKey(name: 'size') required this.size,
      @JsonKey(name: 'data') required final List<NoticeModel> data})
      : _data = data;

  factory _$NoticeListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticeListModelImplFromJson(json);

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
  final List<NoticeModel> _data;
  @override
  @JsonKey(name: 'data')
  List<NoticeModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoticeListModel(totalPage: $totalPage, totalCount: $totalCount, currentPage: $currentPage, size: $size, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoticeListModel'))
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
            other is _$NoticeListModelImpl &&
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

  /// Create a copy of NoticeListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeListModelImplCopyWith<_$NoticeListModelImpl> get copyWith =>
      __$$NoticeListModelImplCopyWithImpl<_$NoticeListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeListModelImplToJson(
      this,
    );
  }
}

abstract class _NoticeListModel implements NoticeListModel {
  const factory _NoticeListModel(
          {@JsonKey(name: 'totalPage') required final int totalPage,
          @JsonKey(name: 'totalCount') required final int totalCount,
          @JsonKey(name: 'currentPage') required final int currentPage,
          @JsonKey(name: 'size') required final int size,
          @JsonKey(name: 'data') required final List<NoticeModel> data}) =
      _$NoticeListModelImpl;

  factory _NoticeListModel.fromJson(Map<String, dynamic> json) =
      _$NoticeListModelImpl.fromJson;

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
  List<NoticeModel> get data;

  /// Create a copy of NoticeListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeListModelImplCopyWith<_$NoticeListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
