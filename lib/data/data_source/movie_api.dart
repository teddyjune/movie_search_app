import 'movie_dto.dart';

abstract class MovieApi {
  Future<MovieDto> getMovieList();
  Future<MovieDto> getSearchedMovies(String query);
}
