import 'package:flutter/material.dart';
import 'package:movie_search_app/ui/movie_search_screen.dart';
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
                icon:
                    Icon(Icons.video_collection_outlined, color: Colors.white),
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
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SingleChildScrollView(
                child: Stack(
                  children: [
                    SizedBox(
                      height: size.height - 80,
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
                                    gradient: LinearGradient(colors: [
                                  Colors.black.withOpacity(0.85),
                                  Colors.black.withOpacity(0),
                                ], end: Alignment.topCenter)),
                              ),
                            ],
                          ),
                        ],
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
                                    fontSize: 15),
                              ),
                              const Text(
                                '영화',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Row(
                                children: const [
                                  Text(
                                    '카테고리',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
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

                    //
                    // SizedBox(
                    //   width: 150,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: const [
                    //       Text(
                    //         '코미디',
                    //         style: TextStyle(fontSize: 15),
                    //       ),
                    //       Text(
                    //         '색다른 영화',
                    //         style: TextStyle(fontSize: 15),
                    //       ),
                    //       Text(
                    //         '57억 로또',
                    //         style: TextStyle(fontSize: 15),
                    //       ),
                    //       Text(
                    //         'MZ세대 버전',
                    //         style: TextStyle(fontSize: 15),
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    Positioned(
                      bottom: 10,
                      child: SizedBox(
                        height: 160,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            for (var i = 1; i < 10; i++)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                    'https://cdn.emetro.co.kr/data2/content/image/2022/08/23/.cache/512/20220823500459.jpg'),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
