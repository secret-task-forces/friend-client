import 'package:logger/logger.dart';
import 'package:flutter_template/config/build_env.dart';
import 'log_printer.dart';

class Logging {
  Logging._();

  static final Logger _logger = Logger(
    printer: PrefixPrinter(
      PrettyPrinter(
          methodCount: 0,
          stackTraceBeginIndex: 0,
          errorMethodCount: 5,
          printEmojis: false),
    ),
  );

  ///
  /// Request Log
  ///
  static void req({
    String? url,
    String? contentType,
    String? method,
    String? accessToken,
    String? refreshToken,
    String? title,
    Map<String, dynamic>? query,
    dynamic body,
  }) {
    final Logger log = Logger(
      printer: RequestLogger(
        url: url,
        title: title,
        method: method,
        queryParameters: query,
        contentType: contentType,
        accessToken: accessToken,
        refreshToken: refreshToken,
      ),
    );
    log.d('');
    if (Env.HTTP_DEBUG) {
      _logger.d(body);
    }
  }

  ///
  /// Response Log
  ///
  static void res(
      {String? title,
      String? status,
      String? method,
      String? url,
      dynamic body}) {
    final Logger log = Logger(
      printer: ResponseLogger(
          title: title, status: status, method: method, url: url, body: body),
    );
    log.i('');
    if (Env.HTTP_DEBUG) {
      _logger.d(body);
    }
  }

  ///
  /// Error Log
  ///
  static void errorLog(
      {String? errorType, int? statusCode, String? detail, dynamic error}) {
    final log = Logger(
        printer: ErrorLog(
            errorType: errorType, statusCode: statusCode, detail: detail));
    log.e('');
    if (Env.HTTP_DEBUG) {
      _logger.d(error);
    }
  }

  ///
  /// Default Log
  ///
  static void log(dynamic value) {
    final log = Logger(
      printer: ConsoleLog(message: value),
    );
    log.i('');
  }
}
