import 'package:dio/dio.dart';
import 'package:flutter_template/config/build_env.dart';

class HttpConfig {
  static String baseURL = Env.BASE_URL;

  static Duration connectionTimeout =
      Env.IS_DEV ? const Duration(seconds: 30) : const Duration(seconds: 5);

  static Duration receiveTimeout = const Duration(seconds: 30);

  static String contentType = Headers.jsonContentType;

  static ResponseType responseType = ResponseType.json;
}
