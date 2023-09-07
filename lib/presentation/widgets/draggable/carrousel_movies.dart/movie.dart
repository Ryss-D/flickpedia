import 'package:flickpedia/presentation/widgets/rate.dart';
import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  const Movie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Hero(
            tag: "movie",
            child: Image(
              image: NetworkImage("dsda"),
            ),
          ),
          Text(""),
          Rate(),
        ],
      ),
    );
  }
}
