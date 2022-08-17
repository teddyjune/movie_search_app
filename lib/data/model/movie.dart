import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  final String title;
  final String posterPath;
  final String releaseDate;
  final num voteCount;
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
