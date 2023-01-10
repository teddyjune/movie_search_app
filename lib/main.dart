import 'package:flutter/material.dart';
import 'package:movie_search_app/ui/movie_main/movie_main_screen.dart';
import 'package:movie_search_app/ui/movie_main/movie_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => MovieViewModel()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
      ),
      home: const MovieMainScreen(),
    );
  }
}
