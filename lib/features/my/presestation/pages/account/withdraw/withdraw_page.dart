import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/shared/components/base/base_button.dart';
import 'package:flutter_template/shared/components/base/base_input.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';
import 'package:flutter_template/shared/components/base/base_scaffold.dart';

class WithdrawPage extends ConsumerStatefulWidget {
  const WithdrawPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends ConsumerState<WithdrawPage> {
  final reportReasonController = TextEditingController();
  final reasonSet = <String>{};

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(userProvider);

    return BaseScaffold(
      showBackArrow: true,
      dismissKeyboardOnTap: true,
      title: '회원 탈퇴',
      floatingActionButton: Row(
        children: [
          Expanded(
            child: BaseButton(
              type: BaseButtonType.sub,
              label: '취소',
              onPressed: () {
                context.pop();
              },
            ),
          ),
          const SizedBox(width: 7),
          Expanded(
            child: BaseButton(
              type: BaseButtonType.main,
              label: '탈퇴하기',
              enabled: reasonSet.isNotEmpty,
              onPressed: () {
                if (reasonSet.contains('기타')) {
                  final reason = reportReasonController.text.trim();
                  if (reason.isNotEmpty) {
                    reasonSet.remove('기타');
                    reasonSet.add(reason);
                  }
                }

                ref.read(userProvider.notifier).withdrawal();
              },
            ),
          )
        ],
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              '${state.valueOrNull?.name}님,\n그동안 서비스를 이용해 주셔서\n감사드립니다.',
              style: AppTypo.title,
            ),
            const SizedBox(height: 16),
            Text(
              '고객님이 느끼셨던 불편함을 저희에게 공유해주시면\n더욱 발전한 서비스를 제공할 수 있도록 하겠습니다.',
              style: AppTypo.body.copyWith(
                color: AppColors.gray.shade600,
              ),
            ),
            const SizedBox(height: 40),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                final reason = '탈퇴 사유 $index';
                final isSelected = reasonSet.contains(reason);

                return GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    if (isSelected) {
                      reasonSet.remove(reason);
                    } else {
                      reasonSet.add(reason);
                    }

                    setState(() {});
                  },
                  child: Row(
                    children: [
                      AssetSvg.asset(
                        Svgs.check,
                        size: 24,
                        color: isSelected
                            ? AppColors.tint
                            : AppColors.gray.shade200,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        reason,
                        style: AppTypo.bodyLarge,
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 14),
            ),
            const SizedBox(height: 12),
            if (reasonSet.contains('기타'))
              BaseInputField(
                controller: reportReasonController,
                minLines: 5,
                maxLines: 5,
                maxLength: 200,
                hintText: '불편하셨던 점을 적어주세요',
              )
          ],
        ),
      ),
    );
  }
}
