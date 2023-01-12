import 'package:movie_search_app/data/model/movie.dart';

import '../data_source/movie_api.dart';
import '../data_source/movie_dto.dart';

class MovieRepository {
  final MovieApi _api;

  MovieRepository(this._api);

  Future<List<Movie>> getResult() async {
    MovieDto movieDto = await _api.getMovieList();
    return [];
  }
  // 검색된 정보를 제목, 포스터, 개봉일, 상세설명을 넣은 리스트로 변환
  Future<List<Movie>> getSearchedMovies(String query) async {
    final movieDto = await _api.getSearchedMovies(query);

    if ((movieDto.results?.length ?? 0) == 0) {
      return []; //검색결과가 없으면 null 반환
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
