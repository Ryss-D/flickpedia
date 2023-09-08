import 'package:flickpedia/presentation/widgets/details/actor_details.dart';
import 'package:flickpedia/presentation/widgets/details/movie_details.dart';
import 'package:flickpedia/presentation/widgets/details/watch_now_button.dart';
import 'package:flickpedia/presentation/widgets/rate.dart';
import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  final String title;
  final String coverUrl;
  final String description;
  final String genres;
  final String productionCompanies;
  final String release;
  final int movieId;
  final double rate;
  const MovieDetailsScreen(
      {super.key,
      required this.title,
      required this.coverUrl,
      required this.description,
      required this.movieId,

      required this.genres,
      required this.productionCompanies,
      required this.release, required this.rate});
  static const routeName = '/movie-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Hero(
              tag: movieId,
              child: Image(
                image: NetworkImage(coverUrl),
              ),
            ),
            Text(title),
            Row(children: [const WatchNowButton(), Rate(rate:rate)]),
            Text(description),
            ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => const ActorDetails()),
            MovieDetails(
              genres: genres,
              productionCompanies: productionCompanies,
              release: release,
            ),
          ],
        ),
      ),
    );
  }
}
