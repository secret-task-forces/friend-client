// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeCategoryState {
  List<NoticeCategory> get categoryList => throw _privateConstructorUsedError;
  NoticeCategory get selectedCategory => throw _privateConstructorUsedError;

  /// Create a copy of NoticeCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoticeCategoryStateCopyWith<NoticeCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeCategoryStateCopyWith<$Res> {
  factory $NoticeCategoryStateCopyWith(
          NoticeCategoryState value, $Res Function(NoticeCategoryState) then) =
      _$NoticeCategoryStateCopyWithImpl<$Res, NoticeCategoryState>;
  @useResult
  $Res call(
      {List<NoticeCategory> categoryList, NoticeCategory selectedCategory});

  $NoticeCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class _$NoticeCategoryStateCopyWithImpl<$Res, $Val extends NoticeCategoryState>
    implements $NoticeCategoryStateCopyWith<$Res> {
  _$NoticeCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoticeCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? selectedCategory = null,
  }) {
    return _then(_value.copyWith(
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<NoticeCategory>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as NoticeCategory,
    ) as $Val);
  }

  /// Create a copy of NoticeCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoticeCategoryCopyWith<$Res> get selectedCategory {
    return $NoticeCategoryCopyWith<$Res>(_value.selectedCategory, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoticeCategoryStateImplCopyWith<$Res>
    implements $NoticeCategoryStateCopyWith<$Res> {
  factory _$$NoticeCategoryStateImplCopyWith(_$NoticeCategoryStateImpl value,
          $Res Function(_$NoticeCategoryStateImpl) then) =
      __$$NoticeCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NoticeCategory> categoryList, NoticeCategory selectedCategory});

  @override
  $NoticeCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$NoticeCategoryStateImplCopyWithImpl<$Res>
    extends _$NoticeCategoryStateCopyWithImpl<$Res, _$NoticeCategoryStateImpl>
    implements _$$NoticeCategoryStateImplCopyWith<$Res> {
  __$$NoticeCategoryStateImplCopyWithImpl(_$NoticeCategoryStateImpl _value,
      $Res Function(_$NoticeCategoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoticeCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? selectedCategory = null,
  }) {
    return _then(_$NoticeCategoryStateImpl(
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<NoticeCategory>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as NoticeCategory,
    ));
  }
}

/// @nodoc

class _$NoticeCategoryStateImpl implements _NoticeCategoryState {
  _$NoticeCategoryStateImpl(
      {required final List<NoticeCategory> categoryList,
      required this.selectedCategory})
      : _categoryList = categoryList;

  final List<NoticeCategory> _categoryList;
  @override
  List<NoticeCategory> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  final NoticeCategory selectedCategory;

  @override
  String toString() {
    return 'NoticeCategoryState(categoryList: $categoryList, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeCategoryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categoryList), selectedCategory);

  /// Create a copy of NoticeCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeCategoryStateImplCopyWith<_$NoticeCategoryStateImpl> get copyWith =>
      __$$NoticeCategoryStateImplCopyWithImpl<_$NoticeCategoryStateImpl>(
          this, _$identity);
}

abstract class _NoticeCategoryState implements NoticeCategoryState {
  factory _NoticeCategoryState(
          {required final List<NoticeCategory> categoryList,
          required final NoticeCategory selectedCategory}) =
      _$NoticeCategoryStateImpl;

  @override
  List<NoticeCategory> get categoryList;
  @override
  NoticeCategory get selectedCategory;

  /// Create a copy of NoticeCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoticeCategoryStateImplCopyWith<_$NoticeCategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
