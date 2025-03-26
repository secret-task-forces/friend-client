import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/features/my/di/notice_module.dart';
import 'package:flutter_template/features/my/domain/entities/notice_category.dart';
import 'package:flutter_template/features/my/domain/repositories/notice_repository.dart';
import 'package:flutter_template/features/my/presestation/providers/notice/notice_category_state.dart';

const defaultCategory = NoticeCategory(idx: 0, name: '전체');

class NoticeCategoryNotifier
    extends AutoDisposeAsyncNotifier<NoticeCategoryState> {
  NoticeRepository get _noticeRepository => ref.watch(noticeRepositoryProvider);

  @override
  Future<NoticeCategoryState> build() async {
    final response = await _noticeRepository.getNoticeCategoryList();

    return response.fold(
      (l) => throw AsyncError(l, l.stackTrace),
      (r) => NoticeCategoryState(
        categoryList: [defaultCategory, ...r],
        selectedCategory: defaultCategory,
      ),
    );
  }

  Future<void> selectCategory(int idx) async {
    if (!state.hasValue ||
        idx < 0 ||
        idx >= state.requireValue.categoryList.length) {
      return;
    }

    state = AsyncData(state.requireValue.copyWith(
      selectedCategory: state.requireValue.categoryList[idx],
    ));
  }
}
