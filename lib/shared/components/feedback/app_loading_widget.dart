import 'package:flutter/material.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.tint,
      ),
    );
  }
}
