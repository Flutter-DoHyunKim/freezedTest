import 'package:drift/drift.dart';
import 'package:freezed_testing/data_source/local/database/database.dart';
import 'package:freezed_testing/models/movie_model.dart';

extension ModelToEntityMapper on ResultMovieModel {
  TodosCompanion? toEntity() {

    return TodosCompanion.insert(
      adult: adult,
      originalTitle: originalTitle,
      backdropPath: backdropPath,
      genreIds: genreIds.toString(),
      id: Value(id),
      originalLanguage: originalLanguage,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }
}

extension EntityToModelMapper on Todo {
  ResultMovieModel toModel() {
    print(backdropPath.runtimeType);
    print(adult);
    print([genreIds].runtimeType);
    print(id.runtimeType);
    print(originalLanguage.runtimeType);
    print(originalTitle);
    print(overview);
    print(popularity);
    print(posterPath);
    print(releaseDate);
    print(title);
    print(video);
    print(voteAverage);
    print(voteCount);

    return ResultMovieModel.fromJson({
      'adult': adult,
      'backdrop_path': '123',
      'genre_ids': [1,2],
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    });
  }
}
