import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movie_search_app/data/model/movie.dart';
import 'package:movie_search_app/data/repository/movie_repository.dart';

class MovieViewModel extends ChangeNotifier {
  final _movieRepository = MovieRepository();

  List<Movie> movies = [];
  bool isLoading = false;

  void fetchSearchedMovie(String query) async {
    isLoading = true;
    notifyListeners();

    movies = await _movieRepository.getSearchedMovies(query);
    isLoading = false;
    notifyListeners();
  }
}
