import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/shared/components/base/base_button.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

class AppErrorWidget extends ConsumerWidget {
  const AppErrorWidget({
    super.key,
    this.topPadding = 250,
    this.invalidateProviders = const [],
    this.error,
    this.stack,
    this.onRefresh,
  });

  final Object? error;
  final StackTrace? stack;
  final double topPadding;
  final List<ProviderOrFamily> invalidateProviders;
  final void Function()? onRefresh;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SizedBox(height: topPadding),
        AssetSvg.asset(Svgs.red_error),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                '정보를 불러올 수 없어요',
                style: AppTypo.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 144,
          child: BaseButton(
            label: '다시 불러오기',
            type: BaseButtonType.main,
            onPressed: () {
              onRefresh?.call();
              _invalidateProviders(ref);
            },
          ),
        ),
      ],
    );
  }

  void _invalidateProviders(WidgetRef ref) {
    for (var provider in invalidateProviders) {
      log('invalidate $provider');
      ref.invalidate(provider);
    }
  }
}
