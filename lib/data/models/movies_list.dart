
import 'package:flickpedia/data/models/movie.dart';

class MovieList{
  final String category;
  final List<Movie> movies ;

  MovieList({required this.category, required this.movies});

  factory MovieList.fromJson(json) {
    return MovieList(
      category: json['title'],
    movies: []
    );
  }
}