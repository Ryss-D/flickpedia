class MovieDetails{
  final String coverUrl;
  final String title;
  final String resume;
  final int rate;

  MovieDetails({required this.coverUrl, required this.title, required this.resume, required this.rate});
  factory MovieDetails.fromJson(json) {
    return MovieDetails(
      title: json['title'],
      rate: json['author_name']?[0] ?? 0,
      coverUrl: json['isbn']?[0] ?? "",
      resume: json['isbn']?[0] ?? "",
    );

  }
}