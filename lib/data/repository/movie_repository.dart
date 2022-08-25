import 'package:movie_search_app/data/model/movie.dart';

import '../data_source/movie_api.dart';

class MovieRepository {
  final MovieApi _api;

  MovieRepository(this._api);

  Future<List<Movie>> getSearchedMovies(String query) async {
    final movieDto = await _api.getSearchedMovies(query);

    if ((movieDto.results?.length ?? 0) == 0) {
      return [];
    }
    return movieDto.results!
        .map((e) => Movie(
              title: e.title ?? '',
              posterPath: e.posterPath ?? '',
              releaseDate: e.releaseDate ?? '',
              voteCount: e.voteCount ?? 0,
              voteAverage: e.voteAverage ?? 0,
              overview: e.overview ?? '',
            ))
        .toList();
  }
}
