import 'movie_dto.dart';

abstract class MovieApi {
  Future<MovieDto> getSearchedMovies(String query);
}
