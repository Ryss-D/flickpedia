import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MoviesSearchBar extends StatelessWidget {
  const MoviesSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: const Icon(Icons.search),
      hintText: AppLocalizations.of(context)!.search,
    );
  }
}
