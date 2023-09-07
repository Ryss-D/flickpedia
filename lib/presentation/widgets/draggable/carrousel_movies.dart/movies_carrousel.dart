import 'package:flickpedia/presentation/widgets/draggable/carrousel_movies.dart/movie.dart';
import 'package:flutter/material.dart';

class MoviesCarrousel extends StatelessWidget {
  const MoviesCarrousel({super.key});

  @override
  Widget build(BuildContext context) {
    return 

            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) =>Movie()
            );
  }
}