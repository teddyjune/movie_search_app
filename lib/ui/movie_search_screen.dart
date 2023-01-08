import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'debounce.dart';
import 'movie_detail_screen.dart';
import 'movie_view_model.dart';

class MovieSearchScreen extends StatefulWidget {
  const MovieSearchScreen({Key? key}) : super(key: key);

  @override
  State<MovieSearchScreen> createState() => _MovieSearchScreenState();
}

class _MovieSearchScreenState extends State<MovieSearchScreen> {
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
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'NETFLIX',
          style: TextStyle(color: Colors.redAccent),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: 56,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              onChanged: _debounce
                  .run(() => viewModel.fetchSearchedMovie(_controller.text)),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary, width: 2),
                ),
                hintText: '영화제목을 입력하세요',
              ),
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: state.movies.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2 / 3.5,
            ),
            itemBuilder: (BuildContext context, int index) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MovieDetailScreen(state.movies[index])),
                        );
                      },
                      child: Hero(
                        tag: state.movies[index].posterPath,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://image.tmdb.org/t/p/w500${state.movies[index].posterPath}',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      state.movies[index].title,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
