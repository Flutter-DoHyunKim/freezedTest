import 'package:dio/dio.dart';
import 'package:freezed_testing/data_source/network/network_error.dart';

class APIConst {
  static const String userToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhZDVlNTcyMDJhNDBlYWNmZTEzNzI1MDA3NGY4ZjFhZiIsInN1YiI6IjY0YjhhMGI4NGQyM2RkMDE0NDhjNGI3ZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.oJA2FnxFAJUWqSUgWq2X0IqFsZGyrcxjWWOK8ivekc4';

  final Map<String, dynamic> baseHeaders = {
    'Authorization': 'Bearer $userToken'
  };

  static Dio makeDio() { //dio 를 미리 생성 하기
    APIConst instance = APIConst();
    return Dio(BaseOptions(
      headers: instance.baseHeaders,
      baseUrl: 'https://api.themoviedb.org/3',
      connectTimeout: const Duration(seconds: 2),
      sendTimeout: const Duration(seconds: 2),
      receiveTimeout: const Duration(seconds: 2),
    ))
      ..interceptors.add(NetWorkErrorInterceptor()); //error catch를 해야하지만 어떤 것을 catch 할지는 결정 못함
  }
}
