import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_testing/data_source/local/database/database.dart';
import 'package:freezed_testing/data_source/local/mappers/movie_mapper.dart';
import 'package:freezed_testing/models/movie_model.dart';
import 'package:freezed_testing/provider/todo_dao_provider.dart';

class FamousMovieNotifier extends Notifier<ResultMovieModel?> {
  @override
  ResultMovieModel? build() {
    return null;
  }

  Future<void> insertFamousMovie() async {
    //함수 호출이 가능
    List<FavoriteMovie> temp=await ref.watch(movieDaoProvider).allShowEntries();
    state=temp[0].toModel();
  }
}

final getFamousMovieNotifier =
NotifierProvider<FamousMovieNotifier, ResultMovieModel?>( //이름, dataType
        () => FamousMovieNotifier());



