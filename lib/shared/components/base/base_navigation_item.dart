import 'package:flutter/material.dart';
import 'package:flutter_template/core/routes/enums/navigation_items.dart';
import 'package:flutter_template/shared/assets/asset_png.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';

class BaseNavigationItem extends StatelessWidget {
  const BaseNavigationItem({
    super.key,
    required this.navigationItem,
    required this.isSelected,
    required this.hasNew,
  });

  final NavigationItems navigationItem;
  final bool isSelected;
  final bool hasNew;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          context.goNamed(navigationItem.routeName);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.white : null,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              AssetPng.asset(
                navigationItem.png,
                width: 32,
                height: 32,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  navigationItem.label,
                  style: AppTypo.bodyLargeBold,
                ),
              ),
              const SizedBox(width: 8),
              if (hasNew)
                Text(
                  'New',
                  style: AppTypo.bodyLargeBold.copyWith(
                    color: AppColors.error,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
