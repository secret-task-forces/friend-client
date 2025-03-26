import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_template/features/account/domain/enums/consent_type.dart';
import 'package:flutter_template/shared/components/base/base_switch.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';
import 'package:flutter_template/core/utils/date_time_utils.dart';
import 'package:flutter_template/core/utils/toast_utils.dart';
import 'package:flutter_template/shared/components/base/base_scaffold.dart';

class NotificationSettingPage extends ConsumerStatefulWidget {
  const NotificationSettingPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationSettingPageState();
}

class _NotificationSettingPageState
    extends ConsumerState<NotificationSettingPage> {
  FToast fToast = FToast();

  @override
  void initState() {
    super.initState();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(userProvider);

    ref.listen(userProvider, (previous, next) {
      if (previous?.valueOrNull?.subscribedAds == false &&
          next.valueOrNull?.subscribedAds == true) {
        _showMarketingAgreeToast();
      }
      if (previous?.valueOrNull?.subscribedAds == true &&
          next.valueOrNull?.subscribedAds == false) {
        _showMarketingDisagreeToast();
      }
    });

    return BaseScaffold(
      showBackArrow: true,
      title: '알림',
      child: state.when(
        data: (data) {
          final all = data?.subscribedAds == true &&
              data?.notifyProposal == true &&
              data?.notifyChat == true &&
              data?.notifyReview == true;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '전체 알림',
                      style: AppTypo.bodyLargeBold,
                    ),
                    BaseSwitch(
                      value: all,
                      onChanged: (value) {
                        ref.read(userProvider.notifier).updateConsent(
                              consentType: ConsentType.ALL,
                            );
                      },
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '제안 도착 알림',
                      style: AppTypo.bodyLarge.copyWith(
                        color: data?.notifyProposal == true
                            ? null
                            : AppColors.gray.shade600,
                      ),
                    ),
                    BaseSwitch(
                      value: data?.notifyProposal == true,
                      onChanged: (value) {
                        ref.read(userProvider.notifier).updateConsent(
                              consentType: ConsentType.NOTIFY_PROPOSAL,
                            );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '채팅 알림',
                      style: AppTypo.bodyLarge.copyWith(
                        color: data?.notifyChat == true
                            ? null
                            : AppColors.gray.shade600,
                      ),
                    ),
                    BaseSwitch(
                      value: data?.notifyChat == true,
                      onChanged: (value) {
                        ref.read(userProvider.notifier).updateConsent(
                              consentType: ConsentType.NOTIFY_CHAT,
                            );
                      },
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '리뷰 작성 알림',
                      style: AppTypo.bodyLarge.copyWith(
                        color: data?.notifyReview == true
                            ? null
                            : AppColors.gray.shade600,
                      ),
                    ),
                    BaseSwitch(
                      value: data?.notifyReview == true,
                      onChanged: (value) {
                        ref.read(userProvider.notifier).updateConsent(
                              consentType: ConsentType.NOTIFY_REVIEW,
                            );
                      },
                    )
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '광고성 정보 알림',
                      style: AppTypo.bodyLarge.copyWith(
                        color: data?.subscribedAds == true
                            ? null
                            : AppColors.gray.shade600,
                      ),
                    ),
                    BaseSwitch(
                      value: data?.subscribedAds == true,
                      onChanged: (value) {
                        ref.read(userProvider.notifier).updateConsent(
                              consentType: ConsentType.SUBSCRIBED_ADS,
                            );
                      },
                    )
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          );
        },
        error: (_, __) => const SizedBox.shrink(),
        loading: () => const SizedBox.shrink(),
      ),
    );
  }

  void _showMarketingAgreeToast() {
    ToastUtils.showToast(
      context: context,
      fToast: fToast,
      svg: Svgs.check,
      text:
          '${DateTimeUtils.formatLocalDateFromUTC(DateTime.now())} 광고 수신에 동의하셨습니다.\n수신 동의 철회 : 알림 > 광고성 정보 알림 off',
    );
  }

  void _showMarketingDisagreeToast() {
    ToastUtils.showToast(
      context: context,
      fToast: fToast,
      svg: Svgs.check,
      text:
          '${DateTimeUtils.formatLocalDateFromUTC(DateTime.now())} 광고 수신에 거부하셨습니다.\n수신 동의 : 알림 > 광고성 정보 알림 on',
    );
  }
}
