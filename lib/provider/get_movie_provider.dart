import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_testing/models/movie_model.dart';
import 'package:freezed_testing/provider/repository_provider.dart';

class MovieListNotifier extends Notifier<List<ResultMovieModel>> {
  @override
  List<ResultMovieModel> build() {
    return []; //(ref)=>[] 와 같다. 이렇게 return 형식으로 적어도 된다
  }

  Future<void> getMovieList(int value) async {
    //함수 호출이 가능
    MovieModel? result =
        await ref.watch(repositoryProvider).getPopularMovie(value);
    //API 를 가져올 때 또 다른 provider를 사용할 수 도 있다.
    state = [...state, ...result?.results ?? []]; //state 로 현재의 value를 update
  }
}

final getMovieListProvider =
    NotifierProvider<MovieListNotifier, List<ResultMovieModel>>( //이름, dataType
        () => MovieListNotifier());
