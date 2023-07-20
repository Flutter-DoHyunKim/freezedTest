import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';
@freezed
class MovieModel with _$MovieModel{
  const factory MovieModel({
    required int page,
    required List<Results> results,
  })=_MovieModel;
  factory MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);
}
@freezed
abstract class Results with _$Results{
  factory Results({
    required bool adult,
    @JsonKey(name: 'backdrop_path') required String backdropPath, //@jsonkey json 데이터의 key, data 를 mapping 한다고 생각
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
    required int id,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    required String title,
    required bool video,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  })=_Results;
  factory Results.fromJson(Map<String, dynamic> json) => _$ResultsFromJson(json);
}
