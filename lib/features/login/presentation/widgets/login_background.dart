import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/config/build_env.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';

class LoginBackground extends ConsumerStatefulWidget {
  const LoginBackground({super.key});

  @override
  ConsumerState<LoginBackground> createState() => _LoginBackgroundState();
}

class _LoginBackgroundState extends ConsumerState<LoginBackground> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 73),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            color: AppColors.tint,
          ),
          const SizedBox(height: 17),
          Row(
            children: [
              Expanded(
                child: Text(
                  Env.IS_DEV ? '로그인화면\nDev' : '로그인화면\nProd',
                  style: AppTypo.body.copyWith(
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
