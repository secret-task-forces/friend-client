import 'dart:convert';

class LoggerUtils {
  LoggerUtils._();

  static StringBuffer doubleLine({required int lineLength, required String divider}) {
    StringBuffer doubleDividerLine = StringBuffer();

    for (int i = 0; i < lineLength; i++) {
      doubleDividerLine.write(divider);
    }
    return doubleDividerLine;
  }

  static String stringifyMessage(dynamic message) {
    final finalMessage = message is Function ? message() : message;
    if (finalMessage is Map || finalMessage is Iterable) {
      var encoder = const JsonEncoder.withIndent('   ', toEncodableFallback);
      return encoder.convert(finalMessage);
    } else {
      return finalMessage.toString();
    }
  }

  static Object toEncodableFallback(dynamic object) {
    return object.toString();
  }
}
