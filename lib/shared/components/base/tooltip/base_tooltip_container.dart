import 'package:flutter/material.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';

class BaseTooltipContainer extends StatelessWidget {
  final Widget child;
  final double strokeWidth;

  final Color backgroundColor;
  final double borderRadius;
  final double arrowWidth;
  final double arrowHeight;

  const BaseTooltipContainer({
    super.key,
    required this.child,
    this.strokeWidth = 2.0,
    this.backgroundColor = AppColors.tint,
    this.borderRadius = 999.0,
    this.arrowWidth = 10.0,
    this.arrowHeight = 6.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TooltipPainter(
        strokeWidth: strokeWidth,
        backgroundColor: backgroundColor,
        borderRadius: borderRadius,
        arrowWidth: arrowWidth,
        arrowHeight: arrowHeight,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: strokeWidth,
          left: strokeWidth,
          right: strokeWidth,
          bottom: arrowHeight + strokeWidth,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7.5),
          child: child,
        ),
      ),
    );
  }
}

class TooltipPainter extends CustomPainter {
  final double strokeWidth;
  final Color backgroundColor;
  final double borderRadius;
  final double arrowWidth;
  final double arrowHeight;

  TooltipPainter({
    required this.strokeWidth,
    required this.backgroundColor,
    required this.borderRadius,
    required this.arrowWidth,
    required this.arrowHeight,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // 경계 반지름이 도형의 최소 크기를 넘지 않도록 조정합니다.
    double adjustedRadius = borderRadius;
    if (borderRadius > size.width / 2) {
      adjustedRadius = size.width / 2;
    }
    if (borderRadius > (size.height - arrowHeight) / 2) {
      adjustedRadius = (size.height - arrowHeight) / 2;
    }

    final paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(adjustedRadius, 0)
      ..lineTo(size.width - adjustedRadius, 0)
      ..arcToPoint(
        Offset(size.width, adjustedRadius),
        radius: Radius.circular(adjustedRadius),
      )
      ..lineTo(size.width, size.height - arrowHeight - adjustedRadius)
      ..arcToPoint(
        Offset(size.width - adjustedRadius, size.height - arrowHeight),
        radius: Radius.circular(adjustedRadius),
      )
      ..lineTo((size.width + arrowWidth) / 2, size.height - arrowHeight)
      ..lineTo(size.width / 2, size.height)
      ..lineTo((size.width - arrowWidth) / 2, size.height - arrowHeight)
      ..lineTo(adjustedRadius, size.height - arrowHeight)
      ..arcToPoint(
        Offset(0, size.height - arrowHeight - adjustedRadius),
        radius: Radius.circular(adjustedRadius),
      )
      ..lineTo(0, adjustedRadius)
      ..arcToPoint(
        Offset(adjustedRadius, 0),
        radius: Radius.circular(adjustedRadius),
      )
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
