import 'package:flutter/material.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';

enum BaseButtonType { main, sub }

class BaseButton extends StatefulWidget {
  const BaseButton({
    super.key,
    required this.type,
    required this.label,
    required this.onPressed,
    this.enabled = true,
    this.child,
  });

  final BaseButtonType type;
  final String label;
  final void Function() onPressed;
  final bool enabled;
  final Widget? child;

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  final statesController = WidgetStatesController();
  bool isPressed = false;

  @override
  void initState() {
    super.initState();

    statesController.addListener(() {
      if (statesController.value.contains(WidgetState.pressed)) {
        if (mounted) {
          setState(() {
            isPressed = true;
          });
        }
      }

      if (statesController.value.isEmpty) {
        Future.delayed(Durations.short2, () {
          if (mounted) {
            setState(() {
              isPressed = false;
            });
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FilledButton(
            onPressed: (widget.enabled) ? widget.onPressed : null,
            statesController: statesController,
            style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              alignment: Alignment.center,
              padding: WidgetStatePropertyAll(_getPadding()),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              ),
              backgroundColor: _getBackgroundColor(),
              overlayColor: WidgetStateProperty.all(Colors.transparent),
            ),
            child: _buildChild(),
          ),
        ),
      ],
    );
  }

  Widget _buildChild() {
    if (widget.child != null) {
      return widget.child!;
    }

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.linear(1.0),
      ),
      child: Text(
        widget.label,
        style: _getTextStyle(),
      ),
    );
  }

  WidgetStateProperty<Color?>? _getBackgroundColor() {
    if (!widget.enabled) {
      return WidgetStatePropertyAll(AppColors.gray.shade600);
    }

    return switch (widget.type) {
      BaseButtonType.main => WidgetStatePropertyAll(AppColors.gray.shade900),
      BaseButtonType.sub => WidgetStatePropertyAll(AppColors.gray.shade200),
    };
  }

  EdgeInsets _getPadding() {
    return const EdgeInsets.symmetric(horizontal: 24, vertical: 16);
  }

  TextStyle _getTextStyle() {
    TextStyle typo = switch (widget.type) {
      BaseButtonType.main => AppTypo.bodyLarge.copyWith(color: AppColors.white),
      BaseButtonType.sub =>
        AppTypo.bodyLarge.copyWith(color: AppColors.gray.shade600),
    };

    if (!widget.enabled) {
      typo = typo.copyWith(color: AppColors.white);
    }

    return typo;
  }
}
