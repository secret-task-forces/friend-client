import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:flutter_template/shared/components/base/base_button.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ForceUpdatePage extends ConsumerWidget {
  const ForceUpdatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appVersionAsync = ref.watch(appVersionProvider);
    final currentVersion = ref.watch(appInfoProvider);

    return appVersionAsync.when(
      data: (appVersion) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AssetSvg.asset(Svgs.red_error, size: 60),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    '새로운 버전으로 업데이트가 필요합니다',
                    style: AppTypo.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('현재 버전',
                          style: AppTypo.subLarge
                              .copyWith(color: Colors.grey.shade600)),
                      Text(currentVersion, style: AppTypo.bodyLarge),
                    ],
                  ),
                  AssetSvg.asset(Svgs.arrow_right,
                      size: 24, color: Colors.grey.shade600),
                  Column(
                    children: [
                      Text('최소 버전',
                          style: AppTypo.subLarge
                              .copyWith(color: Colors.grey.shade600)),
                      Text(appVersion.minVersion, style: AppTypo.bodyLarge),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 144,
              child: BaseButton(
                label: '업데이트',
                type: BaseButtonType.main,
                onPressed: _goToStore,
              ),
            ),
          ],
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => const Center(child: Text('버전 정보를 불러올 수 없습니다')),
    );
  }

  void _goToStore() async {
    final url = kIsWeb
        ? 'https://www.naver.com'
        : Platform.isAndroid
            ? 'market://details?id=com.stf.flutter_template'
            : 'https://apps.apple.com/app/id6596730750';

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }
}
