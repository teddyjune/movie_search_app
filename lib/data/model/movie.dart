import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String title,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'vote_count') required num voteCount,
    @JsonKey(name: 'vote_average') required num voteAverage,
    required String overview,
  }) = _Movie;

  factory Movie.fromJson(Map<String, Object?> json) => _$MovieFromJson(json);
}
