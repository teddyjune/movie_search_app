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

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['original_title'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      voteCount: json['vote_count'],
      voteAverage: json['vote_average'],
      overview: json['overview'],
    );
  }
}
