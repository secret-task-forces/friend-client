import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:flutter_template/shared/components/base/base_button.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/features/login/di/sign_up_module.dart';
import 'package:flutter_template/core/routes/app_route.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';
import 'package:flutter_template/core/utils/toast_utils.dart';

class TermBottomSheet extends ConsumerStatefulWidget {
  const TermBottomSheet({super.key});

  @override
  ConsumerState<TermBottomSheet> createState() => _TermBottomSheetState();
}

class _TermBottomSheetState extends ConsumerState<TermBottomSheet> {
  final fToast = FToast();

  @override
  void initState() {
    super.initState();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(signUpProvider);
    final notifier = ref.watch(signUpProvider.notifier);

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: notifier.allCheck,
            child: CheckButton(
              value: state.allTermCheck,
              text: '모두 동의합니다.',
              onChanged: notifier.allCheck,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              color: AppColors.gray.shade100,
              textStyle: AppTypo.bodyLarge,
            ),
          ),
          const SizedBox(height: 20),
          CheckButton(
            value: state.ageCheck,
            text: '만 14세 이상입니다.',
            onChanged: notifier.ageCheck,
            isRequired: true,
          ),
          CheckButton(
            value: state.useTermCheck,
            onTapText: '서비스 이용약관',
            text: '에 동의합니다.',
            onChanged: notifier.useTermCheck,
            isRequired: true,
            onTap: () => context.pushNamed(AppRoute.UseTermPage.name),
          ),
          CheckButton(
            value: state.privacyCheck,
            onTapText: '개인정보 수집 및 이용',
            text: '에 동의합니다.',
            onChanged: notifier.privacyCheck,
            isRequired: true,
            onTap: () => context.pushNamed(AppRoute.PrivacyPage.name),
          ),
          CheckButton(
            value: state.marketingCheck,
            text: 'E-mail 및 SMS 광고성 정보에 수신동의합니다.',
            onChanged: notifier.marketingCheck,
            isRequired: false,
          ),
          const SizedBox(height: 12),
          BaseButton(
            label: '다음',
            type: BaseButtonType.main,
            onPressed: () async {
              final marketingCheck = ref.read(signUpProvider).marketingCheck;
              final todayYYYYMMDD =
                  DateFormat('yyyy.MM.dd', 'ko').format(DateTime.now());
              String toastText =
                  '$todayYYYYMMDD 광고 수신에 동의하셨습니다.\n수신 동의 철회 : 알림 > 광고성 정보 알림 off';

              if (!marketingCheck) {
                toastText =
                    '$todayYYYYMMDD 광고 수신에 거부하셨습니다.\n수신 동의 : 알림 > 광고성 정보 알림 on';
              }

              ToastUtils.showToast(
                context: context,
                fToast: fToast,
                svg: Svgs.check,
                text: toastText,
              );

              await ref.read(signUpProvider.notifier).signup();
            },
            enabled: state.requiredTermCheck,
          ),
        ],
      ),
    );
  }
}

class CheckButton extends StatelessWidget {
  const CheckButton({
    super.key,
    required this.value,
    required this.text,
    required this.onChanged,
    this.onTapText,
    this.onTap,
    this.padding,
    this.color,
    this.isRequired,
    this.textStyle = AppTypo.body,
  });

  final bool value;
  final String? onTapText;
  final String text;
  final void Function() onChanged;
  final void Function()? onTap;
  final EdgeInsets? padding;
  final Color? color;
  final bool? isRequired;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Container(
        padding: padding ?? const EdgeInsets.fromLTRB(20, 0, 20, 20),
        decoration: ShapeDecoration(
          color: color ?? Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (onTapText != null)
              GestureDetector(
                onTap: onTap,
                child: Text(
                  onTapText!,
                  style: textStyle?.copyWith(
                          decoration: TextDecoration.underline) ??
                      AppTypo.body.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: text,
                    style: textStyle ?? AppTypo.body,
                  ),
                  if (isRequired != null)
                    TextSpan(
                      text: isRequired! ? ' (필수)' : null,
                      style: AppTypo.body.copyWith(color: AppColors.error),
                    ),
                ],
                style: textStyle ?? AppTypo.body,
              ),
            ),
            const Spacer(),
            AssetSvg.asset(
              Svgs.check,
              size: 24,
              color: value ? AppColors.tint : AppColors.gray.shade600,
            ),
          ],
        ),
      ),
    );
  }
}
