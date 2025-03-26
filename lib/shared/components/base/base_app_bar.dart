import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    super.key,
    this.showBackArrow = true,
    this.onTapBackArrow,
    this.title,
    this.action,
  });

  final bool showBackArrow;
  final void Function()? onTapBackArrow;
  final String? title;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: showBackArrow ? 36 : 0,
        leading: showBackArrow
            ? Container(
                margin: const EdgeInsets.only(right: 12),
                child: GestureDetector(
                  onTap: () {
                    if (onTapBackArrow != null) {
                      onTapBackArrow?.call();
                    } else {
                      context.pop();
                    }
                  },
                  child: AssetSvg.asset(
                    Svgs.arrow_left,
                    size: 24,
                  ),
                ),
              )
            : null,
        title: title != null ? Text('$title') : null,
        titleTextStyle: AppTypo.title,
        titleSpacing: 0,
        centerTitle: false,
        actions: action != null
            ? [
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: action,
                )
              ]
            : null,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
