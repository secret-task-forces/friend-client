import 'package:flutter_template/shared/assets/asset_png.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BasePageLayout extends StatelessWidget {
  const BasePageLayout({
    super.key,
    required this.child,
    required this.title,
    this.showBackArrow = false,
    this.onBack,
    this.prefixIcon,
    this.actions,
    this.scrollable = true,
  });

  final Widget child;
  final String title;
  final bool showBackArrow;
  final void Function()? onBack;
  final Pngs? prefixIcon;
  final List<Widget>? actions;
  final bool scrollable;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width > 1366;
    final padding = isDesktop
        ? const EdgeInsets.symmetric(horizontal: 32, vertical: 40)
        : const EdgeInsets.all(20);

    Widget content = Column(
      crossAxisAlignment:
          isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 984,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    if (showBackArrow)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: onBack ?? context.pop,
                            child: AssetSvg.asset(
                              Svgs.back_arrow,
                              size: 40,
                              color: AppColors.gray.shade600,
                            ),
                          ),
                          const SizedBox(width: 12),
                        ],
                      ),
                    if (prefixIcon != null)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AssetPng.asset(
                            prefixIcon!,
                            width: 40,
                            height: 40,
                          ),
                          const SizedBox(width: 12),
                        ],
                      ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text(
                        title,
                        style: AppTypo.titleLarge,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
              if (actions != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: actions!,
                ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        scrollable
            ? ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 984),
                child: child,
              )
            : Expanded(child: child),
      ],
    );

    return SizedBox(
      width: 984,
      height: double.infinity,
      child: scrollable
          ? SingleChildScrollView(
              padding: padding,
              child: content,
            )
          : Padding(
              padding: padding,
              child: content,
            ),
    );
  }
}
