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
      decoration:BoxDecoration(
        color:Colors.red,
    borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      //color:Theme.of(context).scaffoldBackgroundColor,
              width: MediaQuery.of(context).size.width/3,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Hero(
            tag: movieId,
            child: Container(
              height: 50,
              width: 50,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image(
                  image: NetworkImage(coverUrl),
                ),
              ),
            ),
          ),
          Text(title),
          Rate(rate:rate),
        ],
      ),
    );
  }
}
