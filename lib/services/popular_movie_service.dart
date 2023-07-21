import 'package:dio/dio.dart';
import 'package:freezed_testing/models/movie_model.dart';

class PopularMovieService{

  Future<dynamic> getPopularMovieService() async {
    /*try {
      var response = await dio.get('https://randomuser.me/api/');
      print(response);
    } catch (e) {
      print(e);
    }
  }*/


  Dio dio = Dio();
  const String userToken='eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhZDVlNTcyMDJhNDBlYWNmZTEzNzI1MDA3NGY4ZjFhZiIsInN1YiI6IjY0YjhhMGI4NGQyM2RkMDE0NDhjNGI3ZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.oJA2FnxFAJUWqSUgWq2X0IqFsZGyrcxjWWOK8ivekc4';
///해당 api key 같은 것은 어디에 숨길까? .env 파일 만들어서? flutter_dotenv import?
  try {
    final response = await dio.get("https://api.themoviedb.org/3/movie/popular",
        options: Options(contentType: 'application/json',
          headers: {'Authorization': 'Bearer $userToken'},));
    final movieModel=MovieModel.fromJson(response.data);
    print(movieModel.runtimeType);
    return movieModel;

  }catch(error){
    print(error);
    return null;
  }
}}