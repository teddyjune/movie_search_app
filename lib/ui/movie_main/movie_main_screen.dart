import 'package:flutter/material.dart';
import 'package:movie_search_app/ui/components/movie_list.dart';
import 'package:movie_search_app/ui/movie_search_screen.dart';
import 'package:movie_search_app/ui/video_detail_screen.dart';
import 'package:provider/provider.dart';

import 'movie_view_model.dart';

class MovieMainScreen extends StatefulWidget {
  const MovieMainScreen({Key? key}) : super(key: key);

  @override
  State<MovieMainScreen> createState() => _MovieMainScreenState();
}

class _MovieMainScreenState extends State<MovieMainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieViewModel>();
    final state = viewModel.state;
    final size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined, color: Colors.white),
              label: 'NEW&HOT',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download, color: Colors.white),
              label: '저장된 콘텐츠',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                height: size.height - 80,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/game.png",
                            width: double.infinity,
                            height: 500,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            height: 500,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                  Colors.black.withOpacity(0.85),
                                  Colors.black.withOpacity(0),
                                ],
                                    end: Alignment.topCenter,
                                    begin: Alignment.bottomCenter)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 25,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "내가 찜한 콘텐츠",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoDetailScreen()),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 13, left: 8, top: 3, bottom: 3),
                                child: Row(
                                  children: const [
                                    Icon(Icons.play_arrow,
                                        color: Colors.black, size: 30),
                                    SizedBox(width: 5),
                                    Text(
                                      "재생",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: const [
                              Icon(
                                Icons.info_outline,
                                color: Colors.white,
                                size: 25,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "정보",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Column(
                        children: [
                          MovieList(
                              movieList: viewModel.movieList,
                              filterTitle: "상영 중인 영화"),
                          MovieList(
                              movieList: viewModel.sortedMovieByReleaseDate,
                              filterTitle: "최신 등록 콘텐츠"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/logo.png",
                            width: 35, fit: BoxFit.cover),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const MovieSearchScreen(),
                                      ));
                                },
                                icon: const Icon(Icons.search)),
                            IconButton(
                                onPressed: null,
                                icon: Image.asset(
                                  "assets/profile.png",
                                  width: 26,
                                  height: 26,
                                  fit: BoxFit.cover,
                                ))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          '시리즈',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        const Text(
                          '영화',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Row(
                          children: const [
                            Text(
                              '카테고리',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(width: 3),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
