import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:flutter_template/features/account/domain/entities/account.dart';
import 'package:flutter_template/shared/components/base/base_page_layout.dart';
import 'package:flutter_template/shared/widgets/video/vimeo_live_player.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/core/routes/app_route.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

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

    return BasePageLayout(
      title: '라이브 뷰',
      scrollable: false,
      child: VimeoLivePlayer(liveId: '5019451'),
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
