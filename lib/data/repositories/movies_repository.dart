import 'package:flickpedia/data/data_providers/movies_api.dart';
import 'package:flickpedia/data/models/movie_details.dart';
import 'package:flickpedia/data/models/movies_list.dart';
import 'package:flickpedia/injection.dart';

class MoviesRepository {
  final MoviesAPI api = getIt<MoviesAPI>();

  Future<MovieList> getMovieList(listName) async {
    final rawMovieList = await api.getRawMoviesLists(listName);
    MovieList movieList = MovieList.fromJson(rawMovieList);
    return movieList;
  }

  Future<MovieDetails> getMovieDetails(movieId) async {
    final rawMovie = await api.getRawMovieDetails(movieId);
     final MovieDetails movie =
        MovieDetails.fromJson(rawMovie);
     return movie;
  }
}
