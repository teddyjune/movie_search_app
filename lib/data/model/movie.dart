import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  final String title;
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(name: 'vote_count')
  final num voteCount;
  @JsonKey(name: 'vote_average')
  final num voteAverage;
  final String overview;

  Movie({
    required this.title,
    required this.posterPath,
    required this.releaseDate,
    required this.voteCount,
    required this.voteAverage,
    required this.overview,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
