import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_search_app/data/data_source/movie_api.dart';

import 'movie_dto.dart';

class MovieApiImpl implements MovieApi {
  final http.Client _client;

  MovieApiImpl({http.Client? client}) : _client = (client ?? http.Client());

  @override // 영화정보 전체를 가져온다. 개봉일자로 분류하는 작업을 위해 만들었다.
  Future<MovieDto> getMovieList() async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=2');

    http.Response response = await _client.get(url);
    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);
    return MovieDto.fromJson(json);
  }

  @override // 검색된 영화정보를 가져온다.
  Future<MovieDto> getSearchedMovies(String query) async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/search/movie?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&query=$query');
    http.Response response = await _client.get(url);
    String jsonString = response.body;
    Map<String, dynamic> json = jsonDecode(jsonString);
    return MovieDto.fromJson(json);
  }
}
