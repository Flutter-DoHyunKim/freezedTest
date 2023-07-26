import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_testing/models/movie_model.dart';
import 'package:freezed_testing/provider/repository_provider.dart';

class MovieListNotifier extends Notifier<List<ResultMovieModel>> {
  @override
  List<ResultMovieModel> build(){
    return [];
}
Future<void> getMovieList(int value)async{
    MovieModel? result=await ref.watch(repositoryProvider).getPopularMovie(value);

    state=[...state,...result?.results??[]];
}
}
final getMovieListProvider=NotifierProvider<MovieListNotifier,List<ResultMovieModel> >(()=>MovieListNotifier());
