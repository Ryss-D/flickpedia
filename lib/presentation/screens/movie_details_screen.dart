import 'package:flickpedia/presentation/widgets/details/actor_details.dart';
import 'package:flickpedia/presentation/widgets/details/movie_details.dart';
import 'package:flickpedia/presentation/widgets/details/watch_now_button.dart';
import 'package:flickpedia/presentation/widgets/rate.dart';
import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Hero(
              tag: "movie",
              child: Image(
                image: NetworkImage("dsda"),
              ),
            ),
            Text("title"),
            Row(children: [WatchNowButton(), Rate()]),
            Text("description"),
            ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => ActorDetails()),
            MovieDetails()
          ],
        ),
      ),
    );
  }
}
