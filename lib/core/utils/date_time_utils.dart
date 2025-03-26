import 'package:intl/intl.dart';

abstract class DateTimeUtils {
  static String formatLocalHMMFromUTC(DateTime? utcDateTime) {
    if (utcDateTime == null) {
      return '미정 (입력이 필요합니다.)';
    }

    // UTC 시간을 로컬 시간으로 변환
    DateTime localDateTime = utcDateTime.toLocal();

    // 로컬 시간을 형식화하여 문자열로 반환
    String formattedDateTime = DateFormat('a h:mm', 'ko').format(localDateTime);

    return formattedDateTime;
  }

  static String formatLocalDateFromUTC(
    DateTime? utcDateTime, {
    String format = 'yyyy.MM.dd',
  }) {
    if (utcDateTime == null) {
      return '미정 (입력이 필요합니다.)';
    }

    DateTime localDateTime = utcDateTime.toLocal();

    return DateFormat(format, 'ko').format(localDateTime);
  }
}
