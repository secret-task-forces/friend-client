import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/features/my/di/notice_module.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/components/feedback/app_error_widget.dart';
import 'package:flutter_template/shared/components/feedback/app_loading_widget.dart';
import 'package:flutter_template/shared/components/base/base_scaffold.dart';

import '../../widgets/notice/notice_category_list_view.dart';
import '../../widgets/notice/notice_list_item.dart';

class NoticePage extends ConsumerStatefulWidget {
  const NoticePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NoticePageState();
}

class _NoticePageState extends ConsumerState<NoticePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(noticeProvider.notifier).fetchMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(noticeProvider);

    return BaseScaffold(
      showBackArrow: true,
      title: '공지사항',
      child: Column(
        children: [
          const NoticeCategoryListView(),
          const SizedBox(height: 12),
          Divider(
            height: 0,
            thickness: 1,
            color: AppColors.gray.shade200,
          ),
          Expanded(
            child: state.when(
              data: (state) {
                return ListView.separated(
                  controller: _scrollController,
                  padding: const EdgeInsets.all(20),
                  itemCount: state.noticeList.length,
                  itemBuilder: (context, index) {
                    final notice = state.noticeList[index];
                    return NoticeListItem(notice: notice);
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 28),
                );
              },
              loading: () => const AppLoadingWidget(),
              error: (error, stack) => AppErrorWidget(
                invalidateProviders: [
                  noticeCategoryProvider,
                  noticeProvider,
                ],
                error: error,
                stack: stack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
