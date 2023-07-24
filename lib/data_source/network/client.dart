import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_testing/data_source/network/network_error.dart';

class APIConst {
  final Map<String, dynamic> baseHeaders = {
    'Authorization': 'Bearer ${dotenv.env['MovieAPI']}'
  };

  static Dio makeDio() { //method, static method: 클래스의 인스턴스를 생성할 필요 없이 직접 호출할 수 있으므로 코드를 간결하게 유지
    //dio 를 미리 생성 하기
    APIConst instance = APIConst();
    return Dio(BaseOptions(
      headers: instance.baseHeaders,
      baseUrl: 'https://api.themoviedb.org/3',
      connectTimeout: const Duration(seconds: 2),
      sendTimeout: const Duration(seconds: 2),
      receiveTimeout: const Duration(seconds: 2),
    ))
      ..interceptors.add(
          NetWorkErrorInterceptor()); //error catch를 해야하지만 어떤 것을 catch 할지는 결정 못함
  }
}
