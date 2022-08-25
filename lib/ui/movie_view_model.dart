import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movie_search_app/data/repository/movie_repository.dart';
import 'package:movie_search_app/ui/main_action.dart';
import 'package:movie_search_app/ui/main_state.dart';

import '../data/data_source/movie_api_impl.dart';

class MovieViewModel extends ChangeNotifier {
  final _movieRepository = MovieRepository(MovieApiImpl());
  MainState _state = const MainState();

  MainState get state => _state;

  void onAction(MainAction action) {
    action.when(
        getSearchedMovies: (query) {
          fetchSearchedMovie(query);
        },
        error: (e) {});
  }

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
