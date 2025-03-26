import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/shared/components/base/base_button.dart';

import 'base_app_bar.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    super.key,
    required this.showBackArrow,
    required this.child,
    this.appBarKey,
    this.onTapBackArrow,
    this.title,
    this.floatingActionButton,
    this.fabLabel,
    this.onTapFAB,
    this.enabledFAB,
    this.action,
    this.backgroundColor,
    this.safeAreaBottom = true,
    this.bottomMargin,
    this.dismissKeyboardOnTap = false,
  });

  final Key? appBarKey;
  final bool showBackArrow;
  final void Function()? onTapBackArrow;
  final String? title;
  final Widget child;
  final Widget? floatingActionButton;
  final String? fabLabel;
  final void Function()? onTapFAB;
  final bool? enabledFAB;
  final Widget? action;
  final Color? backgroundColor;
  final bool safeAreaBottom;
  final double? bottomMargin;
  final bool dismissKeyboardOnTap;

  @override
  Widget build(BuildContext context) {
    final isFAB = floatingActionButton != null || fabLabel != null;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: BaseAppBar(
        key: appBarKey,
        onTapBackArrow: onTapBackArrow,
        showBackArrow: showBackArrow,
        action: action,
        title: title,
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: safeAreaBottom,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: dismissKeyboardOnTap
              ? () => FocusScope.of(context).unfocus()
              : null,
          child: Container(
            margin: EdgeInsets.only(
                bottom: bottomMargin ??
                    (isFAB ? (kIsWeb ? 72 : (Platform.isIOS ? 60 : 72)) : 0)),
            child: child,
          ),
        ),
      ),
      floatingActionButton: _buildFAB(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget? _buildFAB(BuildContext context) {
    if (fabLabel == null && floatingActionButton == null) return null;

    return Container(
      padding: kIsWeb
          ? const EdgeInsets.fromLTRB(20, 2, 20, 16)
          : Platform.isIOS
              ? const EdgeInsets.symmetric(horizontal: 20, vertical: 2)
              : const EdgeInsets.fromLTRB(20, 2, 20, 16),
      color: Colors.white,
      child: floatingActionButton ??
          BaseButton(
            label: fabLabel!,
            type: BaseButtonType.main,
            onPressed: () {
              onTapFAB!.call();
            },
            enabled: enabledFAB!,
          ),
    );
  }
}
