import 'package:movie_search_app/data/data_source/movie_api_impl.dart';
import 'package:movie_search_app/data/model/movie.dart';

class MovieRepository {
  final _api = MovieApi();

  Future<List<Movie>> getSearchedMovies(String query) async {
    return await _api.getSearchedMovies(query);
  }
}
