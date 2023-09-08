class Movie {
  final String title;
  final double rate;
  final String coverUrl;
  final int movieId;

  Movie({required this.title, required this.rate, required this.coverUrl, required this.movieId});

  factory Movie.fromJson(json) {
    return Movie(
      title: json['title'],
      rate: json['author_name']?[0] ?? 0,
      coverUrl: json['isbn']?[0] ?? "",
      movieId: json['isbn']?[0] ?? "",
    );
  }
}