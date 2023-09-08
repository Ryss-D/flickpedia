import 'package:flickpedia/presentation/widgets/rate.dart';
import 'package:flutter/material.dart';

class MovieMiniature extends StatelessWidget {
  final int movieId;
  final String coverUrl;
  final String title;
  final double rate;
  const MovieMiniature({super.key, required this.movieId, required this.coverUrl, required this.title, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Hero(
            tag: movieId,
            child: Image(
              image: NetworkImage(coverUrl),
            ),
          ),
          Text(title),
          Rate(rate:rate),
        ],
      ),
    );
  }
}
