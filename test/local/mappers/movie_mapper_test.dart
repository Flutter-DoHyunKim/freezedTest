import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_testing/data_source/local/database/database.dart';
import 'package:freezed_testing/data_source/local/mappers/movie_mapper.dart';

void main() {
  final Faker faker = Faker();
  group('ModelToEntityMapper on FavoriteMovie 테스트', () {
    test('toModel() FavoriteMovie 를 ResultMovieModel 로 변환', () {
      final favoriteMovie = FavoriteMovie(
          id: 1,
          adult: faker.randomGenerator.boolean(),
          originalTitle: faker.person.name(),
          backdropPath: faker.internet.httpsUrl(),
          genreIds: faker.person.name(),
          originalLanguage: faker.person.name(),
          overview: faker.person.name(),
          popularity: faker.randomGenerator.decimal(),
          posterPath: faker.internet.httpsUrl(),
          releaseDate: faker.date.toString(),
          title: faker.person.name(),
          video: faker.randomGenerator.boolean(),
          voteAverage: faker.randomGenerator.decimal(),
          voteCount: faker.randomGenerator.integer(10000),
          temp: 0
      );

    final resultMovieModel=favoriteMovie.toModel();
    expect(resultMovieModel.originalTitle,favoriteMovie.originalTitle);
    expect(resultMovieModel.title,favoriteMovie.title);
    expect(resultMovieModel.releaseDate,favoriteMovie.releaseDate);
    expect(resultMovieModel.posterPath,favoriteMovie.posterPath);
    });
  });
}