//create abstract class rate and an implemetation named stars rate
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rate extends StatelessWidget {
  const Rate({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      ratingWidget: RatingWidget(
          full: Icon(Icons.star),
          half: Icon(Icons.star_half),
          empty: Icon(Icons.star)),
      onRatingUpdate: (double value) {},
    );
  }
}
