import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MovieDetails extends StatelessWidget {
  final String genres;
  final String productionCompanies;
  final String release;
  const MovieDetails(
      {super.key,
      required this.genres,
      required this.productionCompanies,
      required this.release});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Text(
          AppLocalizations.of(context)!.genres,
        ),
        Text(genres)
      ]),
      Row(children: [
        Text(
          AppLocalizations.of(context)!.productionCompanies,
        ),
        Text(productionCompanies)
      ]),
      Row(children: [
        Text(
          AppLocalizations.of(context)!.release,
        ),
        Text(release)
      ])
    ]);
  }
}
