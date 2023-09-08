//create abstract class rate and an implemetation named stars rate
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rate extends StatelessWidget {
  final double rate;
  const Rate({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      maxRating: 5.0,
      initialRating: rate,
      ratingWidget: RatingWidget(
          full: const Icon(Icons.star),
          half: const Icon(Icons.star_half),
          empty: const Icon(Icons.star)),
      onRatingUpdate: (double value) {},
    );
  }
}
