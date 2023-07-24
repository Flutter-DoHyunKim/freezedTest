import 'package:flutter/material.dart';
import 'package:freezed_testing/models/movie_model.dart';
import 'package:freezed_testing/services/repository.dart';

class PopularMovieProvider with ChangeNotifier {
  final MovieRepositoryType repositoryType;

  PopularMovieProvider(this.repositoryType);

  List<ResultMovieModel> _movieList = []; //외부에서 안 건드리도록
  List<ResultMovieModel> get movieList => _movieList; //간접적으로 접근하기
  int temp=1;
  Future<void> loadMovieList(int page) async {
    MovieModel? result = await repositoryType.getPopularMovie(page);
    if (result != null) {
      //_movieList.addAll(result.results);
      _movieList=[..._movieList,...result.results];
      temp++;
    } //_movieList update
    else {
      _movieList = [];
    }
    notifyListeners(); //changed 알리기
  }
}
