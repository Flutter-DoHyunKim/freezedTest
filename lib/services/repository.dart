import 'package:dio/dio.dart';
import 'package:freezed_testing/models/movie_model.dart';

abstract class MovieRepositoryType {
  //추상화 하여 해당 요청에 대한 의존성을 낮추자,
  // mock 같은 가짜 데이터를 이용하여 테스트 할 때도 용이하다. (Mockito 찾아보기)
  Future<MovieModel?> getPopularMovie();
}

class PopularMovieService implements MovieRepositoryType {
  final Dio dio;

  PopularMovieService(this.dio);

  @override
  Future<MovieModel?> getPopularMovie() async {
    //dio 주입!

    //해당 api key 같은 것은 어디에 숨길까? .env 파일 만들어서? flutter_dotenv import?

    ///final 을 통해 만든 dio 를 사용? vs 바로 APIConst.makeDio()  사용?

    try {
      final response = await dio.get('/movie/popular');
      final movieModel = MovieModel.fromJson(response.data);
      // print(movieModel.runtimeType);
      return movieModel;
    } catch (error) {
      print(error);
      return null;
    }
  }
}
