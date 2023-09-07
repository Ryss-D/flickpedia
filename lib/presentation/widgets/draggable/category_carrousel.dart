import 'package:flickpedia/presentation/widgets/draggable/carrousel_movies.dart/movie.dart';
import 'package:flickpedia/presentation/widgets/draggable/carrousel_movies.dart/movies_carrousel.dart';
import 'package:flutter/material.dart';

class CategoryCarrousel extends StatelessWidget {
  const CategoryCarrousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text(""),
        Row(
          children: [
          MoviesCarrousel(),
          ],
        )
      ],
    ));
  }
}
