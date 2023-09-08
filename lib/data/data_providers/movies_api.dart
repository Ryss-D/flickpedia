import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class MoviesAPI {
  static String apiKey = dotenv.env['API_Key']!;

  Future getRawSeach(String keyword) async {
    final Uri url =
        Uri.parse("https://api.themoviedb.org/3/search/$keyword?page=1");

    try {
      final response = await http.get(url, headers: {
        "accept": "application/json",
        "Authorization":
            "Bearer $apiKey"
      });
      final rawSearch= json.decode(response.body);

      return rawSearch;
    } catch (error) {}
  }

  Future getRawMoviesLists(String listName) async {
    final Uri url = Uri.parse(
        //upcoming
        //top_rated
        //popular
        //now_playing
        "https://api.themoviedb.org/3/movie/$listName?language=en-US&page=1");

    try {
      final response = await http.get(url, headers: {
        "accept": "application/json",
        "Authorization":
            "Bearer $apiKey"
      });
      final rawMovies= json.decode(response.body);

      return rawMovies;
    } catch (error) {}
  }

  Future getRawMovieDetails(int movieId) async {
    final Uri url =
        Uri.parse("https://api.themoviedb.org/3/movie/$movieId?language=en-US");

    try {
      final response = await http.get(url, headers: {
        "accept": "application/json",
        "Authorization":
            "Bearer $apiKey"
      });
      final rawMovieDetails= json.decode(response.body);

      return rawMovieDetails;
    } catch (error) {}
  }
}
