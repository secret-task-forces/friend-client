import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter/material.dart';

enum BaseTabDivider { horizontal, vertical }

class BaseTabBar extends StatefulWidget implements PreferredSizeWidget {
  const BaseTabBar({
    super.key,
    required this.tabs,
    required this.controller,
    this.onTap,
    this.showBorder = true,
    this.divider = BaseTabDivider.horizontal,
  });

  final List<Widget> tabs;
  final TabController controller;
  final void Function(int index)? onTap;
  final bool showBorder;
  final BaseTabDivider divider;

  @override
  State<BaseTabBar> createState() => _BaseTabBarState();

  @override
  Size get preferredSize => const Size.fromHeight(48);
}

class _BaseTabBarState extends State<BaseTabBar> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_handleTabControllerTick);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_handleTabControllerTick);
    super.dispose();
  }

  void _handleTabControllerTick() {
    if (widget.controller.index != _currentIndex) {
      _currentIndex = widget.controller.index;
    }
    setState(() {});
  }

  void _handleTap(int index) {
    assert(index >= 0 && index < widget.tabs.length);
    setState(() {
      _currentIndex = index;
    });
    widget.controller.animateTo(index);
    widget.onTap?.call(index);
  }

  TextStyle _getTextStyle(bool selected) {
    if (selected) {
      return AppTypo.bodyLarge;
    } else {
      return AppTypo.bodyLarge.copyWith(color: AppColors.gray.shade600);
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isHorizontal = widget.divider == BaseTabDivider.horizontal;
    final int tabCount = widget.tabs.length;
    final List<Widget> wrappedTabs = <Widget>[];

    for (int i = 0; i < tabCount; i++) {
      final bool selected = _currentIndex == i;

      final wrappedTab = InkWell(
        onTap: () {
          _handleTap(i);
        },
        child: AnimatedContainer(
          duration: Durations.short4,
          margin: EdgeInsets.zero,
          child: DefaultTextStyle(
            style: _getTextStyle(selected),
            child: Container(
              alignment: Alignment.center,
              child: IntrinsicWidth(
                child: IntrinsicHeight(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: selected
                          ? Border(
                              bottom: isHorizontal
                                  ? BorderSide(
                                      width: selected ? 2.0 : 0,
                                      color: AppColors.gray,
                                    )
                                  : BorderSide.none,
                            )
                          : null,
                    ),
                    padding: isHorizontal
                        ? EdgeInsets.fromLTRB(0, 14, 0, selected ? 8 : 10)
                        : const EdgeInsets.fromLTRB(12, 0, 12, 0),
                    child: widget.tabs[i],
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      if (isHorizontal) {
        wrappedTabs.add(Expanded(child: wrappedTab));
      } else {
        wrappedTabs.add(wrappedTab);
      }
    }

    if (isHorizontal) {
      return Stack(
        children: [
          if (widget.showBorder)
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: AppColors.gray.shade200,
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: wrappedTabs,
          ),
        ],
      );
    } else {
      return SizedBox(
        height: 48,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: wrappedTabs.length,
          itemBuilder: (context, index) => wrappedTabs[index],
          separatorBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 17),
              width: 1,
              color: AppColors.gray.shade200,
            );
          },
        ),
      );
    }
  }
}

class BaseTab extends StatelessWidget {
  const BaseTab({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.center,
    );
  }
}
