import 'package:dio/dio.dart';

// API 처리
class AppApiInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    try {
      if (response.data == null) {
        throw '응답 데이터가 없습니다.';
      }

      final result = response.data['result'];
      if (result == null) {
        throw '결과 데이터가 없습니다.';
      }

      response.data = response.data['body'];
      super.onResponse(response, handler);
    } catch (e) {
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          response: response,
          error: e.toString(),
        ),
      );
    }
  }
}
