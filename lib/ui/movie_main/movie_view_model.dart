import 'package:flutter/foundation.dart';
import 'package:movie_search_app/data/data_source/movie_api_impl.dart';
import 'package:movie_search_app/data/model/movie.dart';
import 'package:movie_search_app/data/repository/movie_repository.dart';
import 'package:movie_search_app/ui/main_action.dart';
import 'package:movie_search_app/ui/main_state.dart';

class MovieViewModel extends ChangeNotifier {
  final _movieRepository = MovieRepository(MovieApiImpl());
  MainState _state = const MainState();

  MainState get state => _state;

  List<Movie> movieList = [];
  List<Movie> sortedMovieByReleaseDate = [];

  MovieViewModel() {
    init();
  }

  // 순서대로 실행되도록 새로운 함수를 만들어줌.
  Future init() async {
    await getList();
    await getSortedListByReleaseDate();
  }

  void onAction(MainAction action) {
    action.when(
        getSearchedMovies: (query) {
          fetchSearchedMovie(query);
        },
        error: (e) {},
        getMovieList: () {
          getList();
        },
        home: () {
          getSortedListByReleaseDate();
        });
  }

  Future getList() async {
    movieList = await _movieRepository.getResult();
    notifyListeners();
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

  Future<void> getSortedListByReleaseDate() async {
    //모든 영화 정보
    sortedMovieByReleaseDate = await _movieRepository.getResult();

    // 개봉일 순서로 정렬
    sortedMovieByReleaseDate
        .sort((b, a) => a.releaseDate.compareTo(b.releaseDate));
    notifyListeners();
  }
}
