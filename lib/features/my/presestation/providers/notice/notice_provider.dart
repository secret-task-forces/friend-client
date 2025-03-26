import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/features/my/di/notice_module.dart';
import 'package:flutter_template/features/my/domain/entities/notice_list.dart';
import 'package:flutter_template/features/my/domain/repositories/notice_repository.dart';
import 'package:flutter_template/features/my/presestation/providers/notice/notice_category_provider.dart';
import 'package:flutter_template/features/my/presestation/providers/notice/notice_state.dart';

class NoticeNotifier extends AutoDisposeAsyncNotifier<NoticeState> {
  NoticeRepository get _noticeRepository => ref.watch(noticeRepositoryProvider);

  @override
  Future<NoticeState> build() async {
    final category = ref.watch(noticeCategoryProvider).value?.selectedCategory;

    if (category == null) {
      return NoticeState(
        noticeListResponse: const NoticeList(
          data: [],
          totalCount: 0,
          currentPage: 0,
          size: 0,
          totalPage: 0,
        ),
        noticeList: [],
      );
    }

    Either<DioException, NoticeList> response;

    if (category.idx == 0) {
      response = await _noticeRepository.getNoticeList(
        page: 1,
        size: 10,
      );
    } else {
      response = await _noticeRepository.getNoticeListByCategory(
        page: 1,
        size: 10,
        categoryIdx: category.idx,
      );
    }

    return response.fold(
      (l) => throw AsyncError(l, l.stackTrace),
      (r) => NoticeState(
        noticeListResponse: r,
        noticeList: r.data,
      ),
    );
  }

  Future<void> fetchMore() async {
    if (!state.hasValue) return;
    if (state.requireValue.isLoading) return;
    if (state.requireValue.noticeListResponse.currentPage >=
        state.requireValue.noticeListResponse.totalPage) {
      return;
    }

    state = AsyncData(state.value!.copyWith(isLoading: true));

    final category = ref.read(noticeCategoryProvider).value?.selectedCategory ??
        defaultCategory;

    final nextPage = state.requireValue.noticeListResponse.currentPage + 1;
    Either<DioException, NoticeList> response;

    if (category.idx == 0) {
      response = await _noticeRepository.getNoticeList(
        page: nextPage,
        size: 10,
      );
    } else {
      response = await _noticeRepository.getNoticeListByCategory(
        page: nextPage,
        size: 10,
        categoryIdx: category.idx,
      );
    }

    response.fold(
      (l) => state = AsyncError(l, l.stackTrace),
      (r) => state = AsyncData(
        state.value!.copyWith(
          noticeListResponse: r,
          noticeList: [...state.requireValue.noticeList, ...r.data],
          isLoading: false,
        ),
      ),
    );
  }
}
