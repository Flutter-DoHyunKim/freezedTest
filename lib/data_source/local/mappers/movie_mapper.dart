import 'package:drift/drift.dart';
import 'package:freezed_testing/data_source/local/database/database.dart';
import 'package:freezed_testing/models/movie_model.dart';

extension ModelToEntityMapper on ResultMovieModel {
  FavoriteMoviesCompanion toEntity() {

    return FavoriteMoviesCompanion.insert(
      adult: adult,
      originalTitle: originalTitle,
      backdropPath: backdropPath,
      genreIds: genreIds.toString(),
      id:  const Value(1),
      originalLanguage: originalLanguage,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount,
      temp:0
    );
  }
}

extension EntityToModelMapper on FavoriteMovie {
  ResultMovieModel toModel() {


    return ResultMovieModel.fromJson({
      'adult': adult,
      'backdrop_path': backdropPath,
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
