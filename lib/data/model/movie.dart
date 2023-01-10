import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String title,
    @JsonKey(name: 'poster_path') required String posterPath,//영화포스터
    @JsonKey(name: 'release_date') required String releaseDate,//개봉일자
    @JsonKey(name: 'vote_count') required num voteCount,//좋아요 갯수
    @JsonKey(name: 'vote_average') required num voteAverage,//평균점수
    required String overview,
  }) = _Movie;

  factory Movie.fromJson(Map<String, Object?> json) => _$MovieFromJson(json);
}
