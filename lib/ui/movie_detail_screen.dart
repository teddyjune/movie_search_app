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
      body: Column(
        children: [
          Text(movie.title),
          Row(
            children: [
              Image.network(
                'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                fit: BoxFit.cover,
              ),
              Text('개봉일 : ${movie.releaseDate}'),
              ElevatedButton(
                  onPressed: () {}, child: const Text('movie.voteCount')),
              ElevatedButton(
                  onPressed: () {}, child: const Text('movie.voteAverage')),
            ],
          ),
          Text(movie.overview),
        ],
      ),
    );
  }
}
