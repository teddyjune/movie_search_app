import 'package:flutter/material.dart';
import 'package:movie_search_app/ui/movie_view_model.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String query = '';
    final viewModel = context.watch<MovieViewModel>();
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.network(
              'https://image.tmdb.org/t/p/w500${viewModel.movies.where((element) => element.posterPath.contains(query))}',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
