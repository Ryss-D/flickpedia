import 'package:flickpedia/data/models/movies_list.dart';
import 'package:flickpedia/presentation/widgets/draggable/carrousel_movies.dart/movies_carrousel.dart';
import 'package:flutter/material.dart';

class CategoryCarrousel extends StatelessWidget {
  final MovieList movieList;
  const CategoryCarrousel({super.key, required this.movieList});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text(movieList.category),
          MoviesCarrousel(movieList:movieList.movies),
      ],
    ));
  }
}
