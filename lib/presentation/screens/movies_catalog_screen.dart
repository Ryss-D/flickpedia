import 'package:flickpedia/data/constants.dart';
import 'package:flickpedia/data/models/movie.dart';
import 'package:flickpedia/data/models/movies_list.dart';
import 'package:flickpedia/presentation/widgets/draggable/main_draggable.dart';
import 'package:flutter/material.dart';

class MoviesCatalogScreen extends StatelessWidget {
  const MoviesCatalogScreen({super.key});
  static const routeName = '/movies-catalog';

  @override
  Widget build(BuildContext context) {
    //inject result via bloc
    return Scaffold(
      body: SafeArea(
        child: MainDraggable(
          mainCategories: [
            MovieList(
              category: "test",
              movies: [
                Movie(
                    title: "movie title",
                    rate: 4,
                    coverUrl: Constants.ditoImage,
                    movieId: 16),
                Movie(
                    title: "movie title",
                    rate: 4,
                    coverUrl: Constants.ditoImage,
                    movieId: 16),
                Movie(
                    title: "movie title",
                    rate: 4,
                    coverUrl: Constants.ditoImage,
                    movieId: 16),
              ],
            ),
            MovieList(
              category: "test",
              movies: [
                Movie(
                    title: "movie title",
                    rate: 4,
                    coverUrl: Constants.ditoImage,
                    movieId: 16),
                Movie(
                    title: "movie title",
                    rate: 4,
                    coverUrl: Constants.ditoImage,
                    movieId: 16),
                Movie(
                    title: "movie title",
                    rate: 4,
                    coverUrl: Constants.ditoImage,
                    movieId: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
