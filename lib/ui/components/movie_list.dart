import 'package:flutter/material.dart';
import 'package:movie_search_app/data/model/movie.dart';

class MovieList extends StatelessWidget {
  final List<Movie> movieList;
  final String filterTitle;

  const MovieList(
      {Key? key, required this.movieList, required this.filterTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            filterTitle,
            style: const TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 40),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              movieList.length,
              (index) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 110,
                  height: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(movieList[index].posterPath),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(6)),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
