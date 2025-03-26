import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/constants/app_keys.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:flutter_template/features/account/data/models/request/patch_consent_model.dart';
import 'package:flutter_template/features/account/data/models/request/put_fcm_token_model.dart';
import 'package:flutter_template/core/sdk/firebase_sdk.dart';
import 'package:flutter_template/core/sdk/storage_sdk.dart';
import 'package:flutter_template/features/account/di/account_module.dart';
import 'package:flutter_template/features/account/domain/entities/account.dart';
import 'package:flutter_template/features/account/domain/entities/notification_consent.dart';
import 'package:flutter_template/features/account/domain/enums/consent_type.dart';
import 'package:flutter_template/features/account/domain/repositories/account_repository.dart';

class UserStateNotifier extends AsyncNotifier<Account?> {
  AccountRepository get _accountRepository =>
      ref.watch(accountRepositoryProvider);

  @override
  Future<Account?> build() async {
    return await getMyAccount();
  }

  Future<Account?> getMyAccount() async {
    final response = await _accountRepository.getMyAccount();

    return response.fold((failure) async {
      await StorageSdk.put(key: AppKeys.ACCESS_TOKEN, value: '');
      await StorageSdk.put(key: AppKeys.REFRESH_TOKEN, value: '');

      return null;
    }, (res) async {
      return res;
    });
  }

  void userUpdate(Account customer) {
    state = AsyncValue.data(customer);
  }

  Future<void> patchFcmToken() async {
    final token = await FirebaseSdk.instanceToken();
    await _accountRepository.patchFcmToken(
      fcmToken: PutFcmTokenModel(fcmToken: token),
    );
  }

  Future<void> updateConsent({required ConsentType consentType}) async {
    if (!state.hasValue) return;

    final response = await _accountRepository.patchConsent(
        patchConsentModel: PatchConsentModel(consentType: consentType.name));

    return response.fold((failure) => throw failure, (res) {
      switch (consentType) {
        case ConsentType.ALL:
          state = AsyncData(state.requireValue?.copyWith(
            notificationConsent: NotificationConsent(
              subscribedAds: res,
              notifyProposal: res,
              notifyChat: res,
              notifyReview: res,
            ),
          ));
          break;
        case ConsentType.SUBSCRIBED_ADS:
          state = AsyncData(state.requireValue?.copyWith(
            notificationConsent:
                state.requireValue?.notificationConsent?.copyWith(
              subscribedAds: res,
            ),
          ));
          break;
        case ConsentType.NOTIFY_PROPOSAL:
          state = AsyncData(state.requireValue?.copyWith(
            notificationConsent:
                state.requireValue?.notificationConsent?.copyWith(
              notifyProposal: res,
            ),
          ));
          break;
        case ConsentType.NOTIFY_CHAT:
          state = AsyncData(state.requireValue?.copyWith(
            notificationConsent:
                state.requireValue?.notificationConsent?.copyWith(
              notifyChat: res,
            ),
          ));
          break;
        case ConsentType.NOTIFY_REVIEW:
          state = AsyncData(state.requireValue?.copyWith(
            notificationConsent:
                state.requireValue?.notificationConsent?.copyWith(
              notifyReview: res,
            ),
          ));
          break;
        case ConsentType.UNKNOWN:
          break;
      }
    });
  }

  Future<void> withdrawal() async {
    final response = await ref.read(appLoadingProvider.notifier).performApiCall(
          () => _accountRepository.withdrawal(reasons: []),
        );

    response.fold((failure) {
      debugPrint('withdrawal failure: $failure');
    }, (res) {
      ref.read(tokenProvider.notifier).unAuth(withLogout: false);
    });
  }
}
