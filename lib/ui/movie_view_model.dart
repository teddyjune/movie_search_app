import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movie_search_app/data/repository/movie_repository.dart';
import 'package:movie_search_app/ui/main_state.dart';

class MovieViewModel extends ChangeNotifier {
  final _movieRepository = MovieRepository();
  MainState _state = const MainState();

  MainState get state => _state;

  void fetchSearchedMovie(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final movies = await _movieRepository.getSearchedMovies(query);
    _state = state.copyWith(
      movies: movies,
      isLoading: false,
    );
    notifyListeners();
  }
}
