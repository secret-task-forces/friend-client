import 'dart:ui';

import 'package:intl/intl.dart';

abstract class StringUtils {
  static Color? getColor(String? colorCode) {
    if (colorCode == null ||
        colorCode.length != 7 ||
        !colorCode.startsWith('#')) {
      return null;
    }

    try {
      final hexString = 'FF${colorCode.substring(1)}';
      return Color(int.parse(hexString, radix: 16));
    } catch (e) {
      return null;
    }
  }

  static String getFormatNumber(int? number, {bool addWon = true}) {
    if (number == null) {
      return '알 수 없음';
    }

    final formatter = NumberFormat('#,###');

    if (addWon) {
      return '${formatter.format(number)}원';
    } else {
      return formatter.format(number);
    }
  }

  static String getCallSmsLimit(
      {required String? callLimit, required String? smsLimit}) {
    if (callLimit == null || smsLimit == null) {
      return '알 수 없음';
    }

    if (callLimit == '무제한' && smsLimit == '무제한') {
      return '무제한';
    }

    return '$callLimit · $smsLimit';
  }
}
