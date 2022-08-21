import 'package:flutter/material.dart';
import 'package:movie_search_app/data/model/movie.dart';
import 'package:movie_search_app/ui/movie_view_model.dart';
import 'package:provider/provider.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen(
    this.movie, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("영화 상세 정보"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Text(
              movie.title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 150,
                    height: 200,
                    child: Image.network(
                      'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        '개봉일 : ${movie.releaseDate}',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('${movie.voteCount}')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('${movie.voteAverage}')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(movie.overview, style: const TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
