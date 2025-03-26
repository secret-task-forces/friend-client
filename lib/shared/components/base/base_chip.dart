import 'package:flutter/material.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';

enum BaseChipType { filled, outlined }

class BaseChip extends StatelessWidget {
  const BaseChip({
    super.key,
    required this.label,
    required this.type,
    this.onTap,
  });

  final String label;
  final BaseChipType type;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        alignment: Alignment.center,
        padding: _getPadding(),
        decoration: BoxDecoration(
          color: _getBackgroundColor(),
          border: _getBorder(),
          borderRadius: _getBorderRadius(),
        ),
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.linear(1.0),
          ),
          child: Text(
            label,
            style: _getTextStyle(),
          ),
        ),
      ),
    );
  }

  BoxBorder? _getBorder() {
    switch (type) {
      case BaseChipType.filled:
        return null;
      case BaseChipType.outlined:
        return Border.all(color: AppColors.gray.shade200);
    }
  }

  BorderRadiusGeometry _getBorderRadius() {
    return BorderRadius.circular(50);
  }

  Color _getBackgroundColor() {
    switch (type) {
      case BaseChipType.filled:
        return AppColors.tint;
      case BaseChipType.outlined:
        return AppColors.white;
    }
  }

  EdgeInsets _getPadding() {
    return const EdgeInsets.symmetric(vertical: 6, horizontal: 16);
  }

  TextStyle _getTextStyle() {
    TextStyle typo = AppTypo.body;

    switch (type) {
      case BaseChipType.filled:
        typo = typo.copyWith(color: AppColors.white);
      case BaseChipType.outlined:
        typo = typo.copyWith(color: AppColors.gray.shade600);
    }

    return typo;
  }
}
