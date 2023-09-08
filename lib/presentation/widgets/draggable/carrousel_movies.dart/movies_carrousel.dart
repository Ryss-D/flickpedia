import 'package:flickpedia/data/models/movie.dart';
import 'package:flickpedia/presentation/widgets/draggable/carrousel_movies.dart/movie_miniature.dart';
import 'package:flutter/material.dart';

class MoviesCarrousel extends StatelessWidget {
  final List<Movie> movieList;
  const MoviesCarrousel({super.key, required this.movieList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movieList.length,
          itemBuilder: (context, index) {
            Movie movie = movieList[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: MovieMiniature(
                title: movie.title,
                coverUrl: movie.coverUrl,
                rate: movie.rate,
                movieId: movie.movieId,
              ),
            );
          }),
    );
  }
}
