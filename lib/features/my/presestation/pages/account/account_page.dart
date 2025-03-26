import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/core/routes/app_route.dart';
import 'package:flutter_template/shared/components/base/base_scaffold.dart';

class AccountPage extends ConsumerStatefulWidget {
  const AccountPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountPageState();
}

class _AccountPageState extends ConsumerState<AccountPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(userProvider);

    return BaseScaffold(
      showBackArrow: true,
      title: '내 계정',
      child: state.when(
        data: (data) => SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data?.name ?? '회원',
                style: AppTypo.bodyLargeBold,
              ),
              const SizedBox(height: 4),
              Text(
                '${data?.socialTypeString}으로 연결되었어요.',
                style: AppTypo.subLarge.copyWith(
                  color: AppColors.gray.shade600,
                ),
              ),
              const SizedBox(height: 32),
              GestureDetector(
                onTap: () {
                  ref.read(tokenProvider.notifier).unAuth();
                },
                child: const Text(
                  '로그아웃',
                  style: AppTypo.bodyLarge,
                ),
              ),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoute.WithdrawPage.name);
                },
                child: Text(
                  '회원 탈퇴',
                  style: AppTypo.bodyLarge.copyWith(
                    color: AppColors.gray.shade600,
                  ),
                ),
              ),
            ],
          ),
        ),
        error: (error, stackTrace) => const SizedBox.shrink(),
        loading: () => const SizedBox.shrink(),
      ),
    );
  }
}
