import 'package:flickpedia/data/data_providers/movies_api.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<MoviesAPI>(MoviesAPI());
}