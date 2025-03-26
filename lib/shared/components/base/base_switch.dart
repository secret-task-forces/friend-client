import 'package:flutter/material.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';

class BaseSwitch extends StatelessWidget {
  const BaseSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.enabled = true,
  });

  final bool value;
  final void Function(bool value)? onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (enabled) {
          onChanged?.call(!value);
        }
      },
      child: Container(
        width: 28,
        height: 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          // border: _getBorder(),
          color: _getColor(),
        ),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: Durations.short4,
              curve: value ? Curves.easeIn : Curves.easeOut,
              top: 2.0,
              bottom: 2.0,
              left: value ? 12.0 : 1.0,
              right: value ? 1.0 : 12.0,
              child: Center(
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // border: _getBorder(),
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getColor() {
    return value ? AppColors.gray.shade900 : AppColors.gray.shade600;
  }

  // BoxBorder _getBorder() {
  //   return Border.all(
  //     width: 2,
  //     strokeAlign: BorderSide.strokeAlignCenter,
  //     color: _getColor(),
  //   );
  // }
}
