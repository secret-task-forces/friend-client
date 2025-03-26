// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FaqListModel _$FaqListModelFromJson(Map<String, dynamic> json) {
  return _FaqListModel.fromJson(json);
}

/// @nodoc
mixin _$FaqListModel {
  @JsonKey(name: 'totalPage')
  int get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentPage')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<FaqModel> get data => throw _privateConstructorUsedError;

  /// Serializes this FaqListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FaqListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqListModelCopyWith<FaqListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqListModelCopyWith<$Res> {
  factory $FaqListModelCopyWith(
          FaqListModel value, $Res Function(FaqListModel) then) =
      _$FaqListModelCopyWithImpl<$Res, FaqListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'totalCount') int totalCount,
      @JsonKey(name: 'currentPage') int currentPage,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'data') List<FaqModel> data});
}

/// @nodoc
class _$FaqListModelCopyWithImpl<$Res, $Val extends FaqListModel>
    implements $FaqListModelCopyWith<$Res> {
  _$FaqListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqListModel
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
              as List<FaqModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqListModelImplCopyWith<$Res>
    implements $FaqListModelCopyWith<$Res> {
  factory _$$FaqListModelImplCopyWith(
          _$FaqListModelImpl value, $Res Function(_$FaqListModelImpl) then) =
      __$$FaqListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'totalCount') int totalCount,
      @JsonKey(name: 'currentPage') int currentPage,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'data') List<FaqModel> data});
}

/// @nodoc
class __$$FaqListModelImplCopyWithImpl<$Res>
    extends _$FaqListModelCopyWithImpl<$Res, _$FaqListModelImpl>
    implements _$$FaqListModelImplCopyWith<$Res> {
  __$$FaqListModelImplCopyWithImpl(
      _$FaqListModelImpl _value, $Res Function(_$FaqListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqListModel
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
    return _then(_$FaqListModelImpl(
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
              as List<FaqModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqListModelImpl with DiagnosticableTreeMixin implements _FaqListModel {
  const _$FaqListModelImpl(
      {@JsonKey(name: 'totalPage') required this.totalPage,
      @JsonKey(name: 'totalCount') required this.totalCount,
      @JsonKey(name: 'currentPage') required this.currentPage,
      @JsonKey(name: 'size') required this.size,
      @JsonKey(name: 'data') required final List<FaqModel> data})
      : _data = data;

  factory _$FaqListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqListModelImplFromJson(json);

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
  final List<FaqModel> _data;
  @override
  @JsonKey(name: 'data')
  List<FaqModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FaqListModel(totalPage: $totalPage, totalCount: $totalCount, currentPage: $currentPage, size: $size, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FaqListModel'))
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
            other is _$FaqListModelImpl &&
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

  /// Create a copy of FaqListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqListModelImplCopyWith<_$FaqListModelImpl> get copyWith =>
      __$$FaqListModelImplCopyWithImpl<_$FaqListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqListModelImplToJson(
      this,
    );
  }
}

abstract class _FaqListModel implements FaqListModel {
  const factory _FaqListModel(
          {@JsonKey(name: 'totalPage') required final int totalPage,
          @JsonKey(name: 'totalCount') required final int totalCount,
          @JsonKey(name: 'currentPage') required final int currentPage,
          @JsonKey(name: 'size') required final int size,
          @JsonKey(name: 'data') required final List<FaqModel> data}) =
      _$FaqListModelImpl;

  factory _FaqListModel.fromJson(Map<String, dynamic> json) =
      _$FaqListModelImpl.fromJson;

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
  List<FaqModel> get data;

  /// Create a copy of FaqListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqListModelImplCopyWith<_$FaqListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
