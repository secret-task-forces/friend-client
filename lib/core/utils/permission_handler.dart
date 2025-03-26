import 'package:flutter/material.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:flutter_template/features/account/di/account_module.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/app_keys.dart';
import '../../shared/components/base/base_popup.dart';
import '../../shared/widgets/request_permission_widget.dart';
import '../../features/account/data/models/request/put_consent_model.dart';

class PermissionHandler {
  static Future<void> requestPermission(
      BuildContext context, WidgetRef ref) async {
    final instance = await SharedPreferences.getInstance();
    final isFirstRequestPermission =
        instance.getBool(AppKeys.IS_FIRST_REQUEST_PERMISSION) ?? true;

    if (isFirstRequestPermission) {
      bool result = false;

      if (context.mounted) {
        result = await showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => BasePopup(
            title: '사용 권한 안내',
            type: BasePopupType.basic,
            buttonNumber: BasePopupButtonNumber.one,
            content: const RequestPermissionWidget(),
            contentAlignment: BasePopupContentAlignment.center,
            mainButtonLabel: '확인',
            mainButtonOnPressed: () async {
              Navigator.pop(context, true);
            },
          ),
        );
      }

      if (result == true) {
        final permissionStatus = await [
          Permission.notification,
        ].request();

        if (permissionStatus[Permission.notification] ==
            PermissionStatus.granted) {
          await ref.read(accountRepositoryProvider).putConsent(
                putConsentModel: PutConsentModel(
                  notifyProposal: true,
                  notifyChat: true,
                  notifyReview: true,
                ),
              );
          await ref.read(userProvider.notifier).getMyAccount();
        }

        await instance.setBool(AppKeys.IS_FIRST_REQUEST_PERMISSION, false);
      }
    }
  }
}
