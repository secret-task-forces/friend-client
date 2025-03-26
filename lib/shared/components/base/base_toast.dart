import 'package:flutter/material.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

class BaseToast extends StatelessWidget {
  const BaseToast({
    super.key,
    required this.svg,
    required this.text,
    this.svgColor,
  });

  final Svgs svg;
  final String text;
  final Color? svgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(68.0),
        color: AppColors.gray.shade600,
      ),
      child: Row(
        children: [
          AssetSvg.asset(
            svg,
            size: 24,
            color: svgColor ?? AppColors.white,
          ),
          const SizedBox(
            width: 12.0,
          ),
          Text(
            text,
            style: AppTypo.body.copyWith(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
