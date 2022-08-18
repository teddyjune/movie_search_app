import 'package:flutter/material.dart';
import 'package:movie_search_app/ui/movie_view_model.dart';
import 'package:provider/provider.dart';

import '../data/model/movie.dart';
import 'debounce.dart';

class MovieMainScreen extends StatefulWidget {
  const MovieMainScreen({Key? key}) : super(key: key);

  @override
  State<MovieMainScreen> createState() => _MovieMainScreenState();
}

class _MovieMainScreenState extends State<MovieMainScreen> {
  final _controller = TextEditingController();
  final _debounce = Debounce(milliseconds: 500);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieViewModel>();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          '당신이 보고 싶은 영화는?',
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 56,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary, width: 2),
                ),
                suffixIcon: GestureDetector(
                    onTap: () {
                      viewModel.fetchSearchedMovie(_controller.text);
                    },
                    child: const Icon(Icons.search)),
                hintText: '영화제목을 입력하세요',
              ),
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: viewModel.movies.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: viewModel.movies.map((Movie movie) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://image.tmdb.org/t/p/w500${viewModel.movies[index].posterPath}',
                      fit: BoxFit.cover,
                    ),
                  );
                  // Text(viewModel.movies[index].title);
                }).toList(),
              );
            },
          ),
        ),
      ]),
    );
  }
}
