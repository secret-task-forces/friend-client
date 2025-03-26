import 'package:flutter/material.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

class LoginButton extends StatelessWidget {
  final Svgs svg;
  final String text;
  final Color textColor;
  final Color containerColor;
  final Color borderColor;
  final void Function() onTap;

  const LoginButton({
    super.key,
    required this.svg,
    required this.text,
    required this.textColor,
    required this.onTap,
    this.containerColor = AppColors.gray,
    this.borderColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: containerColor,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: AssetSvg.asset(svg, color: Colors.black, size: 24),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: AppTypo.bodyLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}
