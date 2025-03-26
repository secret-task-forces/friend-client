import 'package:flutter/material.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

class BaseDropdown extends StatelessWidget {
  const BaseDropdown({
    super.key,
    required this.label,
    required this.placeholder,
    this.prefix,
    this.onTap,
  });

  final Widget? prefix;
  final String? label;
  final String placeholder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.gray.shade100,
        ),
        child: Row(
          children: [
            if (prefix != null) prefix!,
            Expanded(
              child: Text(
                label ?? placeholder,
                style: label != null
                    ? AppTypo.bodyLarge
                    : AppTypo.bodyLarge
                        .copyWith(color: AppColors.gray.shade600),
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
            ),
            const SizedBox(width: 16),
            AssetSvg.asset(Svgs.expand_more, size: 24, color: AppColors.gray),
          ],
        ),
      ),
    );
  }
}
