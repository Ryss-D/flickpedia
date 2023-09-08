class Movie {
  final String title;
  final int rate;
  final String coverUrl;

  Movie({required this.title, required this.rate, required this.coverUrl});

  factory Movie.fromJson(json) {
    return Movie(
      title: json['title'],
      rate: json['author_name']?[0] ?? 0,
      coverUrl: json['isbn']?[0] ?? "",
    );
  }
}