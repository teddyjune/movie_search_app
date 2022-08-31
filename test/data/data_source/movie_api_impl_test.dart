import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:movie_search_app/data/data_source/movie_api_impl.dart';
import 'package:movie_search_app/data/data_source/movie_dto.dart';

void main() {
  test('영화정보를 가져오는 기능', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString() ==
          'https://api.themoviedb.org/3/search/movie?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&query=minions') {
        return Response(fakeData, 200);
      }
      return Response('error', 404);
    });

    final api = MovieApiImpl(client: mockClient);
    MovieDto movie = await api.getSearchedMovies('minions');
    expect(movie.totalResults, 33);
  });
}

const fakeData = """
{
  "page": 1,
  "results": [
    {
      "adult": false,
      "backdrop_path": "/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg",
      "genre_ids": [
        16,
        12,
        35,
        14
      ],
      "id": 438148,
      "original_language": "en",
      "original_title": "Minions: The Rise of Gru",
      "overview": "",
      "popularity": 2866.79,
      "poster_path": "/1heBUD8o0sgdqLWyeXkylR2POKb.jpg",
      "release_date": "2022-06-29",
      "title": "Minions 2",
      "video": false,
      "vote_average": 7.8,
      "vote_count": 1567
    },
    {
      "adult": false,
      "backdrop_path": "/c7xTZ9EA6GpH72xJC5s0x0KKR1a.jpg",
      "genre_ids": [
        10751,
        16,
        12,
        35
      ],
      "id": 211672,
      "original_language": "en",
      "original_title": "Minions",
      "overview": "there's a super minions",
      "popularity": 77.019,
      "poster_path": "/bkWrtIS7vscRvK074BWn6WHuwuf.jpg",
      "release_date": "2015-06-17",
      "title": "minion",
      "video": false,
      "vote_average": 6.4,
      "vote_count": 9464
    },
    {
      "adult": false,
      "backdrop_path": "/vK48h2fZarnDjXdsnHZFyL5lveI.jpg",
      "genre_ids": [
        16,
        10751,
        35,
        878
      ],
      "id": 229407,
      "original_language": "en",
      "original_title": "Minions: Puppy",
      "overview": "",
      "popularity": 43.596,
      "poster_path": "/bapLpnoV3PUbgcZNDwg6Hxe75HI.jpg",
      "release_date": "2013-12-10",
      "title": "Minions: Puppy",
      "video": false,
      "vote_average": 7.3,
      "vote_count": 180
    },
    {
      "adult": false,
      "backdrop_path": "/wPgAh9xtJL10WcFy93uTqD6sl1l.jpg",
      "genre_ids": [
        16,
        35,
        10751
      ],
      "id": 229408,
      "original_language": "en",
      "original_title": "Minions: Training Wheels",
      "overview": "",
      "popularity": 29.294,
      "poster_path": "/5irlpcx6tmpQ5sq42nojwICZrHN.jpg",
      "release_date": "2013-12-10",
      "title": "Minions: Training Wheels",
      "video": false,
      "vote_average": 7.1,
      "vote_count": 143
    },
    {
      "adult": false,
      "backdrop_path": "/2Hckt3ug71qy1z9qrzHZx94pP0v.jpg",
      "genre_ids": [
        16,
        10751,
        35
      ],
      "id": 54553,
      "original_language": "en",
      "original_title": "Minions: Home Makeover",
      "overview": "",
      "popularity": 26.267,
      "poster_path": "/ch1QTMEOBrBhSSILw6CPFXCdxgB.jpg",
      "release_date": "2010-12-13",
      "title": "Minions: Home Makeover",
      "video": false,
      "vote_average": 6.8,
      "vote_count": 138
    },
    {
      "adult": false,
      "backdrop_path": "/rWXhj6vAVstbZdNRrgF8tAXrx1y.jpg",
      "genre_ids": [
        16,
        10751,
        35
      ],
      "id": 54559,
      "original_language": "en",
      "original_title": "Minions: Orientation Day",
      "overview": "",
      "popularity": 23.524,
      "poster_path": "/bSTNLXAqkLmImXNcELrdCaew8dj.jpg",
      "release_date": "2010-12-13",
      "title": "Minions: Orientation Day",
      "video": false,
      "vote_average": 6.9,
      "vote_count": 156
    },
    {
      "adult": false,
      "backdrop_path": "/3MqoFBr3pDgmM4ylbqB6syCifNf.jpg",
      "genre_ids": [
        35,
        16
      ],
      "id": 403052,
      "original_language": "en",
      "original_title": "Mower Minions",
      "overview": "",
      "popularity": 20.605,
      "poster_path": "/oKVtq8SvLaybXC9oofod4uLRfyW.jpg",
      "release_date": "2016-07-08",
      "title": "Mower Minions",
      "video": false,
      "vote_average": 6.6,
      "vote_count": 137
    },
    {
      "adult": false,
      "backdrop_path": "/7bBOpBMTf0OfjZRLlWZPbPrJkHW.jpg",
      "genre_ids": [
        10751,
        16,
        12,
        35
      ],
      "id": 440769,
      "original_language": "en",
      "original_title": "Minions: 3 Mini-Movie Collection",
      "overview": "",
      "popularity": 14.348,
      "poster_path": "/yoWytTZRJjGXhkRcxVBvnOHKX85.jpg",
      "release_date": "2016-03-25",
      "title": "Minions: 3 Mini-Movie Collection",
      "video": true,
      "vote_average": 6.7,
      "vote_count": 25
    },
    {
      "adult": false,
      "backdrop_path": "/ecJzs7HnppVOzDkUu4Y0sEsebNK.jpg",
      "genre_ids": [
        16
      ],
      "id": 360848,
      "original_language": "en",
      "original_title": "Minions: Movie Auditions",
      "overview": "",
      "popularity": 8.36,
      "poster_path": "/lS6ek8S3xDPhoG7dAUVANrmpkVs.jpg",
      "release_date": "2013-01-01",
      "title": "Minions: Movie Auditions",
      "video": false,
      "vote_average": 5,
      "vote_count": 11
    },
    {
      "adult": false,
      "backdrop_path": "/186yWfGH0HRKBXlmayftGJHU87I.jpg",
      "genre_ids": [
        10751,
        16,
        35
      ],
      "id": 764079,
      "original_language": "en",
      "original_title": "Illumination Presents: Minions Holiday Special",
      "overview": "",
      "popularity": 10.26,
      "poster_path": "/zZI1nByCI0jOQqAUeTahU3j6pt1.jpg",
      "release_date": "2020-11-27",
      "title": "minions holiday special",
      "video": false,
      "vote_average": 7.1,
      "vote_count": 125
    },
    {
      "adult": false,
      "backdrop_path": "/rRaXGX3COvkEf55Zfo0DVYsrPVf.jpg",
      "genre_ids": [
        16,
        10751,
        10402
      ],
      "id": 375186,
      "original_language": "en",
      "original_title": "Minions Jingle Bells",
      "overview": "",
      "popularity": 6.909,
      "poster_path": "/h8anavBbJ2EbR1AEEaqeaPmuH3P.jpg",
      "release_date": "2014-12-11",
      "title": "Minions Jingle Bells",
      "video": false,
      "vote_average": 6.2,
      "vote_count": 12
    },
    {
      "adult": false,
      "backdrop_path": null,
      "genre_ids": [
        
      ],
      "id": 1005988,
      "original_language": "es",
      "original_title": "Minions nace un villano",
      "overview": "",
      "popularity": 5.796,
      "poster_path": null,
      "release_date": "",
      "title": "Minions nace un villano",
      "video": false,
      "vote_average": 0,
      "vote_count": 0
    },
    {
      "adult": false,
      "backdrop_path": null,
      "genre_ids": [
        
      ],
      "id": 878357,
      "original_language": "en",
      "original_title": "Minions and Monsters",
      "overview": "",
      "popularity": 3.271,
      "poster_path": "/9DrIdIiAJkG8BUWCADkXl1G8Hla.jpg",
      "release_date": "2021-06-11",
      "title": "Minions and Monsters",
      "video": false,
      "vote_average": 6,
      "vote_count": 2
    },
    {
      "adult": false,
      "backdrop_path": null,
      "genre_ids": [
        
      ],
      "id": 1000345,
      "original_language": "en",
      "original_title": "Minions 4",
      "overview": "",
      "popularity": 1.464,
      "poster_path": null,
      "release_date": "",
      "title": "Minions 4",
      "video": false,
      "vote_average": 0,
      "vote_count": 0
    },
    {
      "adult": false,
      "backdrop_path": null,
      "genre_ids": [
        878,
        16,
        35
      ],
      "id": 327781,
      "original_language": "en",
      "original_title": "Dark Minions",
      "overview": "",
      "popularity": 1.423,
      "poster_path": null,
      "release_date": "2013-04-19",
      "title": "Dark Minions",
      "video": false,
      "vote_average": 5.7,
      "vote_count": 7
    },
    {
      "adult": false,
      "backdrop_path": null,
      "genre_ids": [
        27,
        9648
      ],
      "id": 295987,
      "original_language": "en",
      "original_title": "The Minions",
      "overview": "",
      "popularity": 0.661,
      "poster_path": "/f6wheZKQgR36UfxdqJSWWvlVO9c.jpg",
      "release_date": "2014-10-30",
      "title": "The Minions",
      "video": false,
      "vote_average": 5,
      "vote_count": 1
    },
    {
      "adult": false,
      "backdrop_path": null,
      "genre_ids": [
        35
      ],
      "id": 573729,
      "original_language": "mt",
      "original_title": "Alice u l Minions fil Pajjiz tal Meravilji",
      "overview": "",
      "popularity": 2.16,
      "poster_path": null,
      "release_date": "2016-12-25",
      "title": "Alice u l Minions fil Pajjiz tal Meravilji",
      "video": false,
      "vote_average": 0,
      "vote_count": 0
    },
    {
      "adult": false,
      "backdrop_path": "/taCWtbPrBNooPqavM9dktdPYtIj.jpg",
      "genre_ids": [
        16,
        10751
      ],
      "id": 366141,
      "original_language": "en",
      "original_title": "Cro Minion",
      "overview": "",
      "popularity": 26.195,
      "poster_path": "/57j78RppxH7JQg0u2UslVllyBKk.jpg",
      "release_date": "2015-11-04",
      "title": "Cro Minion",
      "video": false,
      "vote_average": 7.2,
      "vote_count": 174
    },
    {
      "adult": false,
      "backdrop_path": "/fDjknkPghKnkFqqG268QEaW79X1.jpg",
      "genre_ids": [
        16,
        10751,
        35
      ],
      "id": 54551,
      "original_language": "en",
      "original_title": "Banana",
      "overview": "",
      "popularity": 24.191,
      "poster_path": "/AnmIMKAQjXLjD2DI0ba4D9DpkHv.jpg",
      "release_date": "2010-12-13",
      "title": "Banana",
      "video": false,
      "vote_average": 7.2,
      "vote_count": 235
    },
    {
      "adult": false,
      "backdrop_path": "/cQ3tM5ueROE3s7nT86fmdjh5kvS.jpg",
      "genre_ids": [
        10751,
        12,
        16,
        35
      ],
      "id": 286558,
      "original_language": "en",
      "original_title": "Despicable Me Presents: Minion Madness",
      "overview": "",
      "popularity": 59.815,
      "poster_path": "/vTaOgxhK5MFarbJZ5rCBif40599.jpg",
      "release_date": "2010-12-14",
      "title": "Despicable Me Presents: Minion Madness",
      "video": true,
      "vote_average": 6.9,
      "vote_count": 147
    }
  ],
  "total_pages": 2,
  "total_results": 33
}
""";
