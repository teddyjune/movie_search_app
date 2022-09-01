import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'movie_search_screen.dart';
import 'movie_view_model.dart';

class MovieMainScreen extends StatefulWidget {

  const MovieMainScreen({Key? key}) : super(key: key);

  @override
  State<MovieMainScreen> createState() => _MovieMainScreenState();
}

class _MovieMainScreenState extends State<MovieMainScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieViewModel>();
    final state = viewModel.state;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          title: const Text(
            'NETFLIX',
            style: TextStyle(color: Colors.redAccent),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MovieSearchScreen(),
                      ));
                },
                icon: const Icon(Icons.search)),
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          height: 400,
          child: Image.network(
            'https://image.tmdb.org/t/p/w500/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg',
            fit: BoxFit.cover,
          ),
        ),
    );
  }
}
