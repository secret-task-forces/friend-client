import 'package:logger/logger.dart';
import 'package:flutter_template/config/build_env.dart';

import 'logger_utils.dart';

class RequestLogger extends LogPrinter {
  final String? url;
  final String? contentType;
  final String? method;
  final String? accessToken;
  final String? refreshToken;
  final String? emoji;
  final String? title;
  final Map<String, dynamic>? queryParameters;

  RequestLogger({
    this.title,
    this.url,
    this.method,
    this.accessToken,
    this.refreshToken,
    this.contentType,
    this.emoji,
    this.queryParameters,
  });

  static const topLeftCorner = '┌';
  static const bottomLeftCorner = '└';
  static const middleCorner = '├';
  static const verticalLine = '│';
  static const doubleDivider = '─';
  static const singleDivider = '┄';

  @override
  List<String> log(LogEvent event) {
    if (Env.HTTP_DEBUG) {
      final doubleDividerLine =
          LoggerUtils.doubleLine(lineLength: 120, divider: doubleDivider);
      final now = DateTime.now();
      return [
        'REQUEST: $topLeftCorner$doubleDividerLine',
        'REQUEST: $verticalLine$doubleDivider [$title] 👉🏻 [METHOD:$method] Time:${now.year}년 ${now.month}월${now.day}일 ${now.hour}시${now.minute}분 ${now.second}초',
        'REQUEST: $verticalLine$doubleDivider [URL]:$url',
        'REQUEST: $verticalLine$doubleDivider [CONTENT_TYPE]: $contentType',
        'REQUEST: $verticalLine$doubleDivider [ACCESS_TOKEN]: $accessToken',
        'REQUEST: $verticalLine$doubleDivider [REFRESH_TOKEN]: $refreshToken',
        'REQUEST: $verticalLine$doubleDivider [QUERY_PARAMETERS]: $queryParameters',
        'REQUEST: $verticalLine$doubleDivider [BODY]: 👇🏻',
      ];
    }

    return [];
  }
}

class ResponseLogger extends LogPrinter {
  final String? status;
  final String? url;
  final String? title;
  final String? method;
  final dynamic body;
  ResponseLogger({
    this.url,
    this.body,
    this.method,
    this.title,
    this.status,
  });

  @override
  List<String> log(LogEvent event) {
    if (Env.HTTP_DEBUG) {
      final doubleDividerLine = LoggerUtils.doubleLine(
          lineLength: 120, divider: PrettyPrinter.doubleDivider);
      final now = DateTime.now();
      return [
        'RESPONSE:${PrettyPrinter.topLeftCorner}$doubleDividerLine',
        'RESPONSE:${PrettyPrinter.verticalLine}${PrettyPrinter.doubleDivider} 🐰 [$title]  👉🏻 [METHOD:$method] Time:${now.year}년 ${now.month}월${now.day}일 ${now.hour}시${now.minute}분 ${now.second}초',
        'RESPONSE:${PrettyPrinter.verticalLine}${PrettyPrinter.doubleDivider} [URL]:$url',
        'RESPONSE:${PrettyPrinter.verticalLine}${PrettyPrinter.doubleDivider} 📶 [STATUS_CODE:$status]',
        'RESPONSE:${PrettyPrinter.verticalLine}${PrettyPrinter.doubleDivider} BODY: 👇🏻',
      ];
    }
    return [];
  }
}

class ConsoleLog extends LogPrinter {
  final dynamic message;
  ConsoleLog({this.message});
  @override
  List<String> log(LogEvent event) {
    final now = DateTime.now();
    final doubleDividerLine = LoggerUtils.doubleLine(
        lineLength: 120, divider: PrettyPrinter.doubleDivider);
    return [
      'LOG: ${PrettyPrinter.topLeftCorner}$doubleDividerLine',
      'LOG: ${PrettyPrinter.verticalLine}${PrettyPrinter.doubleDivider} 🤡 [LOG]  👉🏻  Time:${now.year}년 ${now.month}월${now.day}일 ${now.hour}시${now.minute}분 ${now.second}초',
      'LOG: ${PrettyPrinter.verticalLine}${PrettyPrinter.doubleDivider} Message: 👉🏻 $message',
    ];
  }
}

class ErrorLog extends LogPrinter {
  final String? errorType;
  final String? detail;
  final int? statusCode;
  ErrorLog({
    this.errorType,
    this.detail,
    this.statusCode,
  });

  @override
  List<String> log(LogEvent event) {
    final now = DateTime.now();
    final doubleDividerLine = LoggerUtils.doubleLine(
        lineLength: 120, divider: PrettyPrinter.doubleDivider);
    final color = PrettyPrinter.defaultLevelColors[event.level];
    return [
      '  ERROR ${color!('${PrettyPrinter.topLeftCorner}$doubleDividerLine')}',
      '  ERROR ${color('${PrettyPrinter.verticalLine}${PrettyPrinter.doubleDivider} 😳 [ERROR]  👉🏻  Time:${now.year}년 ${now.month}월${now.day}일 ${now.hour}시${now.minute}분 ${now.second}초')}',
      '  ERROR ${color('${PrettyPrinter.verticalLine}${PrettyPrinter.doubleDivider} ⛑ [ERROR]  👉🏻 Status:$statusCode')}'
          '  ERROR ${color('${PrettyPrinter.verticalLine}${PrettyPrinter.doubleDivider} DESCRIPTION: 👉🏻 Detail:$detail')}',
    ];
  }
}
