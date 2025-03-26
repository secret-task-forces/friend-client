import 'package:flutter/material.dart';
import 'package:flutter_template/shared/components/base/tooltip/base_tooltip_container.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

class BaseTooltip extends StatelessWidget {
  const BaseTooltip({
    super.key,
    this.showText = true,
  });

  final bool showText;

  @override
  Widget build(BuildContext context) {
    return BaseTooltipContainer(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AssetSvg.asset(Svgs.email),
          if (showText)
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 6),
                  Flexible(
                    child: Text(
                      '새로운 메시지가 도착했어요!',
                      style: AppTypo.body.copyWith(color: AppColors.white),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
