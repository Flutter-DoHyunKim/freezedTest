import 'package:flutter/material.dart';
import 'package:freezed_testing/models/movie_model.dart';
import 'package:freezed_testing/services/repository.dart';

class PopularMovieProvider with ChangeNotifier {
  final MovieRepositoryType repositoryType;

  PopularMovieProvider(this.repositoryType);

  List<ResultMovieModel> _movieList = []; //외부에서 안 건드리도록
  List<ResultMovieModel> get movieList => _movieList; //간접적으로 접근하기

  Future<void> loadMovieList() async {
    MovieModel? result = await repositoryType.getPopularMovie();
    if (result != null) {
      _movieList = result.results;
    } //_movieList update
    else {
      _movieList = [];
    }
    notifyListeners(); //changed 알리기
  }
}
