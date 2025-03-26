import 'package:flutter/material.dart';

class AppColor extends MaterialColor {
  const AppColor(super.primary, super.swatch);
}

abstract final class AppColors {
  static const Color highlight = Color(0xFFFFB800);
  static const Color error = Color(0xFFEC3E3E);
  static const Color white = Color(0xFFFFFFFF);
  static const Color kakaoContainer = Color(0xFFFEE500);
  static const Color appleContainer = Color(0xFFF6F6F8);

  static const AppColor gray = AppColor(
    _grayPrimaryValue,
    <int, Color>{
      100: Color(0xFFEFF2F3),
      200: Color(0xFFE5E9EC),
      600: Color(0xFF8F98A8),
      900: Color(_grayPrimaryValue),
    },
  );
  static const int _grayPrimaryValue = 0xFF212121;

  static const AppColor tint = AppColor(
    _tintPrimaryValue,
    <int, Color>{
      50: Color(0xFFEDF4FF),
      100: Color(0xFFD3E4FF),
      500: Color(_tintPrimaryValue),
    },
  );
  static const int _tintPrimaryValue = 0xFF0364FF;
}
