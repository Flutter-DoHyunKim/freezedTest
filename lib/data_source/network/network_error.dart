import 'package:dio/dio.dart';

class NetWorkErrorInterceptor extends InterceptorsWrapper {
//interceptor 구현
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    //요청 시 log 찍을 수 있음
    // 부모 클래스의 onRequest 메서드를 호출하여 기본 기능 유지
    super.onRequest(options, handler);
    print(options.path);
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    //response 시 log 찍을 수 있음
// 응답 시간 로깅
    super.onResponse(response, handler);
    print('Response received at: ${DateTime.now()}');
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    //에러 시 log 찍을 수 있음
// 에러 핸들링
    super.onError(err, handler);
    print('Error occurred: ${err.message}');
  }
}
