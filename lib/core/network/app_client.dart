import 'package:dio/dio.dart';

import '../../config/http_config.dart';

class AppClient {
  AppClient._();

  static Dio? _client;

  static Dio get client {
    if (_client == null) {
      throw StateError('App Client가 초기화되지 않았습니다. initialize()를 먼저 호출하세요.');
    }
    return _client!;
  }

  static void initialize() {
    _client = _createDioInstance();
  }

  static Dio _createDioInstance() {
    final dio = Dio();
    dio.options
      ..baseUrl = HttpConfig.baseURL
      ..contentType = HttpConfig.contentType
      ..connectTimeout = HttpConfig.connectionTimeout
      ..receiveTimeout = HttpConfig.receiveTimeout
      ..responseType = HttpConfig.responseType;

    return dio;
  }
}
