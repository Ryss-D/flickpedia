import 'package:flickpedia/data/models/movie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<Movie?> {
  NavigationCubit() : super(null);

  void showMovieDetails(Movie movie) {
    emit(
      movie);
  }
  void popToCatalog() => emit(null);
}
