import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart%20';
import 'package:http/testing.dart';
import 'package:movie_search_app/data/data_source/movie_api_impl.dart';

import '../movie_api_impl_test.dart';

void main() {
  test('영화정보 받아오기', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString() ==
          'https://api.themoviedb.org/3/search/movie?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&query=minions') {
        return Response(fakeData, 200);
      }
      return Response('error', 404);
    });
    final api = MovieApiImpl(client: mockClient);
    final movie = await api.getSearchedMovies('minions');
    expect(movie.totalResults, 33);
  });
}
