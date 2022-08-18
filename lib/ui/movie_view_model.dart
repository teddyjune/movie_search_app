import 'package:flutter/material.dart';
import 'package:movie_search_app/data/model/movie.dart';
import 'package:movie_search_app/data/repository/movie_repository.dart';
import 'package:flutter/foundation.dart';

class MovieViewModel extends ChangeNotifier {
  final _movieRepository = MovieRepository();

  List<Movie> movies = [];

  void fetchSearchedMovie(String query) async {
    movies = await _movieRepository.getSearchedMovies(query);
    notifyListeners();
  }

  String getPoster(Movie movies) {
    return 'https://image.tmdb.org/t/p/w500${movies.posterPath}';
  }
}

