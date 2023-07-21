import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';
@freezed //freezed에게 해당 클래스에 대한 코드를 생성하도록 지시, @unfreezed 사용시 (==, hashcode 사용 못함)
class MovieModel with _$MovieModel{//_$ mixin을 적용(속성, 메서드 정의) ,$ 붙으면 그냥 freezed에 대한 private 클래스라고 보면 된다.
  const factory MovieModel({
    required int page, //page 값
    required List<Results> results, //Results class 아래에 새로 정의
  })=_MovieModel;
  factory MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json); //toJson, fromJson 생성된다
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
