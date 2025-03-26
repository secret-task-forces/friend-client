import 'package:flutter/material.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

class RequestPermissionWidget extends StatelessWidget {
  const RequestPermissionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Divider(height: 0, color: AppColors.gray.shade200),
        const SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: AppColors.tint.shade100,
                shape: BoxShape.circle,
              ),
              child: AssetSvg.asset(
                Svgs.bell,
                size: 24,
                color: AppColors.gray,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '알림(선택)',
                    style: AppTypo.bodyLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '채팅 알림, 휴대폰 견적 결과 알림, \n리뷰 작성 알림 등의 알림을 보내드립니다.',
                    style:
                        AppTypo.body.copyWith(color: AppColors.gray.shade600),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: AppColors.tint.shade100,
                shape: BoxShape.circle,
              ),
              child: AssetSvg.asset(
                Svgs.camera,
                size: 24,
                color: AppColors.gray,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '사진(선택)',
                    style: AppTypo.bodyLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '상담원들과 채팅 연결 시 원하는 이미지를\n보낼 수 있습니다.',
                    style:
                        AppTypo.body.copyWith(color: AppColors.gray.shade600),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: AppColors.tint.shade100,
                shape: BoxShape.circle,
              ),
              child: AssetSvg.asset(
                Svgs.mobile_button,
                size: 24,
                color: AppColors.gray,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '앱 추적 권한(선택)',
                    style: AppTypo.bodyLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '고객님을 위한 맞춤형 상품과 서비스를 제공\n해 드릴 수 있습니다.',
                    style:
                        AppTypo.body.copyWith(color: AppColors.gray.shade600),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
