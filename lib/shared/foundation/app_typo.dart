import 'package:flutter/material.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';

abstract final class AppTypo {
  static const titleLarge = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w700,
    fontSize: 28,
    height: 1.4,
    color: AppColors.gray,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const title = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w700,
    fontSize: 18,
    height: 1.4,
    color: AppColors.gray,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const bodyLargeBold = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w700,
    fontSize: 16,
    height: 1.5,
    color: AppColors.gray,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const bodyLarge = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.5,
    color: AppColors.gray,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const body = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.5,
    color: AppColors.gray,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const bodyBold = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w700,
    fontSize: 14,
    height: 1.5,
    color: AppColors.gray,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const subLarge = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 1.5,
    color: AppColors.gray,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const sub = TextStyle(
    fontFamily: 'Pretendard',
    fontWeight: FontWeight.w500,
    fontSize: 10,
    height: 1.5,
    color: AppColors.gray,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
  );
}

extension AppTypoExtension on TextStyle {
  TextStyle get white => copyWith(color: AppColors.white);
  TextStyle get gray200 => copyWith(color: AppColors.gray.shade200);
  TextStyle get gray600 => copyWith(color: AppColors.gray.shade600);
  TextStyle get error => copyWith(color: AppColors.error);
  TextStyle get tint => copyWith(color: AppColors.tint);
}
