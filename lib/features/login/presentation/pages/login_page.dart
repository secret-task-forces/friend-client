import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/di/app_module.dart';
import 'package:flutter_template/features/login/di/login_module.dart';
import 'package:flutter_template/features/login/di/sign_up_module.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/features/account/domain/entities/token.dart';
import 'package:flutter_template/shared/components/base/base_popup.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/features/login/presentation/providers/login_state.dart';
import 'package:flutter_template/features/login/presentation/widgets/login_bottom_sheet.dart';
import 'package:flutter_template/features/login/presentation/widgets/term_bottom_sheet.dart';
import 'package:flutter_template/core/routes/app_route.dart';

import '../widgets/login_background.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  void initState() {
    _checkToken();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(tokenProvider, _tokenProviderListener);
    ref.listen(loginProvider, _loginProviderListener);
    final state = ref.watch(signUpProvider);

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        systemNavigationBarDividerColor: AppColors.white, //하단바 디바이더 색상
        systemNavigationBarColor: AppColors.white, //하단바 색상
        systemNavigationBarIconBrightness: Brightness.dark, //하단바 아이콘 색상
      ),
      child: Scaffold(
        backgroundColor: AppColors.tint,
        body: Stack(
          children: [
            const LoginBackground(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const LoginBottomSheet(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  state.showTermBottomSheet
                      ? const TermBottomSheet()
                      : const LoginBottomSheet(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _tokenProviderListener(
      AsyncValue<Token?>? prev, AsyncValue<Token?> next) async {
    _checkToken();
  }

  void _goHomePage() async {
    await ref
        .read(appLoadingProvider.notifier)
        .performApiCall(ref.read(userProvider.notifier).getMyAccount);

    if (!mounted) return;

    if (ref.read(userProvider).valueOrNull == null) {
      return;
    } else {
      if (mounted) {
        context.goNamed(AppRoute.HomePage.name);
      }
    }
  }

  void _loginProviderListener(LoginState? previous, LoginState next) {
    if (next.dialogTitle.isNotEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return BasePopup(
            title: next.dialogTitle,
            subText: next.dialogContent,
            buttonNumber: BasePopupButtonNumber.one,
            mainButtonLabel: '확인',
            mainButtonOnPressed: () {
              Navigator.pop(context);
            },
          );
        },
      );

      ref.read(loginProvider.notifier).resetDialogMessage();
    }
  }

  void _checkToken() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final isValidToken =
          await ref.read(tokenProvider.notifier).isValidToken();

      if (isValidToken) {
        _goHomePage();
      }
    });
  }
}
