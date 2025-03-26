import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/features/login/di/login_module.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/features/login/presentation/widgets/login_button.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

class LoginBottomSheet extends ConsumerStatefulWidget {
  const LoginBottomSheet({
    super.key,
  });

  @override
  LoginBottomSheetState createState() => LoginBottomSheetState();
}

class LoginBottomSheetState extends ConsumerState<LoginBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final _ = ref.watch(loginProvider);
    final showIosLogin = !kIsWeb && Platform.isIOS;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LoginButton(
                onTap: () {
                  ref.read(loginProvider.notifier).kakaoLogin();
                },
                svg: Svgs.kakao,
                text: '카카오톡으로 시작하기',
                containerColor: AppColors.kakaoContainer,
                textColor: AppColors.gray,
              ),
              if (showIosLogin) const SizedBox(height: 13),
              if (showIosLogin)
                LoginButton(
                  onTap: () {
                    ref.read(loginProvider.notifier).appleLogin();
                  },
                  svg: Svgs.apple,
                  text: 'Apple로 시작하기',
                  containerColor: AppColors.appleContainer,
                  textColor: AppColors.gray,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
