import 'package:flickpedia/logic/blocs/theme_bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
        final themeBloc = BlocProvider.of<ThemeBloc>(context);
    return IconButton(
      icon: const Icon(Icons.lightbulb_circle),
      onPressed: () {themeBloc.add(ToogleDark());},
    );
  }
}
