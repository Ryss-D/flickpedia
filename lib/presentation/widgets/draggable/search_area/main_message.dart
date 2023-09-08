import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class MainMessage extends StatelessWidget {
  const MainMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
        AppLocalizations.of(context)!.greetings,
    );
  }
}