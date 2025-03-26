import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:flutter_template/features/account/domain/entities/account.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/features/my/presestation/widgets/my_page_list_item.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/core/routes/app_route.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';
import 'package:flutter_template/shared/components/base/base_app_bar.dart';

class MyPage extends ConsumerStatefulWidget {
  const MyPage({super.key});

  @override
  ConsumerState<MyPage> createState() => _MyPageState();
}

class _MyPageState extends ConsumerState<MyPage> {
  @override
  Widget build(BuildContext context) {
    final version = ref.watch(appInfoProvider);
    final state = ref.watch(userProvider);

    return Scaffold(
      appBar: const BaseAppBar(
        showBackArrow: false,
        title: '마이',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '내 계정',
                style: AppTypo.bodyLargeBold,
              ),
            ),
            const SizedBox(height: 20),
            _buildUserInfo(context, state),
            const SizedBox(height: 20),
            Container(
              height: 8,
              color: AppColors.gray.shade100,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '앱 정보',
                style: AppTypo.bodyLargeBold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyPageListItem(
                    label: '알림',
                    routeName: AppRoute.NotificationSettingPage.name,
                  ),
                  const SizedBox(height: 24),
                  MyPageListItem(
                    label: '공지사항',
                    routeName: AppRoute.NoticePage.name,
                  ),
                  const SizedBox(height: 24),
                  MyPageListItem(
                    label: '이용약관',
                    routeName: AppRoute.UseTermPage.name,
                  ),
                  const SizedBox(height: 24),
                  MyPageListItem(
                    label: '개인정보 처리방침',
                    routeName: AppRoute.PrivacyPage.name,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    '버전 정보 v$version',
                    style: AppTypo.bodyLarge,
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfo(BuildContext context, AsyncValue<Account?> state) {
    return state.when(
      data: (data) => InkWell(
        onTap: () {
          context.pushNamed(AppRoute.AccountPage.name);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                ],
              ),
              AssetSvg.asset(
                Svgs.chevron_right,
                size: 24,
              ),
            ],
          ),
        ),
      ),
      error: (_, __) => const SizedBox.shrink(),
      loading: () => const SizedBox.shrink(),
    );
  }
}
