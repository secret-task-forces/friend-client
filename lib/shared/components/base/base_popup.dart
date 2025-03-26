import 'package:flutter/material.dart';
import 'package:flutter_template/shared/components/base/base_button.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';

enum BasePopupType { basic }

enum BasePopupButtonNumber { one, two }

enum BasePopupContentAlignment { top, center }

class BasePopup extends StatelessWidget {
  const BasePopup({
    super.key,
    required this.title,
    this.subText,
    this.targetText,
    this.type = BasePopupType.basic,
    required this.buttonNumber,
    required this.mainButtonLabel,
    required this.mainButtonOnPressed,
    this.mainButtonEnabled = true,
    this.subButtonLabel,
    this.subButtonOnPressed,
    this.content,
    this.contentAlignment = BasePopupContentAlignment.center,
    this.showClose = false,
  });

  final String title;
  final String? subText;
  final String? targetText;
  final BasePopupType type;
  final BasePopupButtonNumber buttonNumber;
  final String mainButtonLabel;
  final void Function() mainButtonOnPressed;
  final bool mainButtonEnabled;
  final String? subButtonLabel;
  final void Function()? subButtonOnPressed;
  final Widget? content;
  final BasePopupContentAlignment? contentAlignment;
  final bool showClose;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: _buildChild(),
      ),
    );
  }

  Column _buildChild() {
    final chlidren = <Widget>[];

    if (showClose) {
      chlidren.add(Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [AssetSvg.asset(Svgs.close, size: 24)]));
    }

    if (contentAlignment == BasePopupContentAlignment.top && content != null) {
      chlidren.add(content!);
    }

    chlidren.addAll([
      Row(children: [Expanded(child: Text(title, style: AppTypo.title))]),
    ]);

    if (subText != null) {
      chlidren.addAll([
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _buildColoredText(
                  subText!, targetText, AppColors.gray.shade600),
            ),
          ],
        )
      ]);
    }

    if (contentAlignment == BasePopupContentAlignment.center &&
        content != null) {
      chlidren.add(content!);
    }

    chlidren.addAll([
      const SizedBox(height: 20),
      _buildButtons(),
    ]);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: chlidren,
    );
  }

  Widget _buildButtons() {
    return Row(
      children: [
        if (buttonNumber == BasePopupButtonNumber.two && subButtonLabel != null)
          Expanded(child: _buildSubButton()),
        Expanded(child: _buildMainButton()),
      ],
    );
  }

  Widget _buildMainButton() {
    switch (type) {
      case BasePopupType.basic:
        return BaseButton(
          type: BaseButtonType.main,
          label: mainButtonLabel,
          onPressed: mainButtonOnPressed,
          enabled: mainButtonEnabled,
        );
    }
  }

  Widget _buildSubButton() {
    switch (type) {
      case BasePopupType.basic:
        return Row(
          children: [
            Expanded(
              child: BaseButton(
                type: BaseButtonType.sub,
                label: subButtonLabel!,
                onPressed: subButtonOnPressed!,
              ),
            ),
            const SizedBox(width: 7),
          ],
        );
    }
  }

  Widget _buildColoredText(String text, String? target, Color color) {
    List<TextSpan> spans = [];
    int start = 0;
    int index;

    if (target == null) {
      return Text(
        text,
        style: AppTypo.body.copyWith(color: AppColors.gray.shade600),
      );
    }

    while ((index = text.indexOf(target, start)) != -1) {
      if (index > start) {
        spans.add(TextSpan(
          text: text.substring(start, index),
          style: AppTypo.body.copyWith(color: AppColors.gray.shade600),
        ));
      }
      spans.add(
          TextSpan(text: target, style: AppTypo.body.copyWith(color: color)));
      start = index + target.length;
    }

    if (start < text.length) {
      spans.add(TextSpan(
        text: text.substring(start),
        style: AppTypo.body.copyWith(color: AppColors.gray.shade600),
      ));
    }

    return RichText(
      text: TextSpan(children: spans),
    );
  }
}
