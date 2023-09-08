import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WatchNowButton extends StatelessWidget {
  const WatchNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Text(
        AppLocalizations.of(context)!.watchNow,
      ),
    );
  }
}
