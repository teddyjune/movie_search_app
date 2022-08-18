import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_search_app/data/model/movie.dart';

class MovieApi {
  Future<List<Movie>> getSearchedMovies(String query) async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/search/movie?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&query=$query&page=2');
    http.Response response = await http.get(url);
    Map<String, dynamic> json = jsonDecode(response.body);
    Iterable results = json['results'];
    print(results);
    return results.map((e) => Movie.fromJson(e)).toList();
  }
}
