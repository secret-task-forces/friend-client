import 'package:flutter/material.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

class BaseBottomSheet extends StatelessWidget {
  const BaseBottomSheet({
    super.key,
    this.showClose = true,
    this.title,
    this.padding,
    required this.content,
  });

  final bool showClose;
  final String? title;
  final Widget content;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return _buildBaseBottomSheet(context);
  }

  Widget _buildBaseBottomSheet(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: AppColors.white,
      ),
      padding: padding ?? const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showClose)
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: AssetSvg.asset(Svgs.close, size: 24),
                ),
              ),
            if (title != null)
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title!,
                          style: AppTypo.title,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            content,
          ],
        ),
      ),
    );
  }
}
