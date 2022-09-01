import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'NETFLIX',
              style: TextStyle(color: Colors.redAccent),
            ),
            bottom: const TabBar(
              tabs: [
                Text('TV 프로그램'),
                Text('영화'),
                Text('내가 찜한 콘텐츠'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Image(image: AssetImage('assets/liberation.png')),
              Image(image: AssetImage('assets/645.png')),
              Image(image: AssetImage('assets/liberation.png')),
            ]),
        ));
  }
}
// SizedBox(
// width: double.infinity,
// height: 400,
// child: Image.network(
// 'https://image.tmdb.org/t/p/w500/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg',
// fit: BoxFit.cover,
// ),
// ),