import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/features/my/di/notice_module.dart';
import 'package:flutter_template/shared/components/base/base_chip.dart';

class NoticeCategoryListView extends ConsumerStatefulWidget {
  const NoticeCategoryListView({
    super.key,
  });

  @override
  ConsumerState<NoticeCategoryListView> createState() =>
      _NoticeCategoryListViewState();
}

class _NoticeCategoryListViewState
    extends ConsumerState<NoticeCategoryListView> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(noticeCategoryProvider);

    return state.when(
      data: (data) {
        return Container(
          height: 35,
          margin: const EdgeInsets.fromLTRB(20, 16, 0, 0),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: data.categoryList.length,
            itemBuilder: (context, index) {
              final category = data.categoryList[index];
              final isSelected = index == data.selectedCategory.idx;

              return BaseChip(
                label: category.name,
                type: isSelected ? BaseChipType.filled : BaseChipType.outlined,
                onTap: () {
                  ref
                      .read(noticeCategoryProvider.notifier)
                      .selectCategory(category.idx);
                },
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 6);
            },
          ),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (error, stack) => const SizedBox.shrink(),
    );
  }
}
