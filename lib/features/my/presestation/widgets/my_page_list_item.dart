import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';

class MyPageListItem extends StatelessWidget {
  const MyPageListItem({
    super.key,
    required this.label,
    required this.routeName,
  });

  final String label;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(routeName);
      },
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: AppTypo.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
