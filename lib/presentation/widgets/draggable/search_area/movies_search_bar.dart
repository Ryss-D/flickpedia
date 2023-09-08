import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MoviesSearchBar extends StatelessWidget {
  final bool expanded;
  const MoviesSearchBar({super.key, required this.expanded});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(expanded?4 : 26),
      child: SearchBar(
        leading: const Icon(Icons.search),
        hintText: AppLocalizations.of(context)!.search,
      ),
    );
  }
}
