import 'package:flickpedia/data/theme_data.dart';
import 'package:flickpedia/logic/blocs/theme_bloc/theme_bloc.dart';
import 'package:flickpedia/presentation/screens/movies_catalog_screen.dart';
import 'package:flickpedia/presentation/screens/movie_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
   await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
       return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) { 
    return MaterialApp(
      localizationsDelegates: const [
          AppLocalizations.delegate, // Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English, no country code
          Locale('es', ''), // Spanish, no country code
        ],
      title: 'Flutter Demo',
      theme: state.themeData,
      darkTheme: darkTheme, // Set the dark theme
      themeMode: ThemeMode.system,
      initialRoute: MoviesCatalogScreen.routeName,
  routes: {
    MoviesCatalogScreen.routeName: (context) => const MoviesCatalogScreen(),
  }
    );
        }
      )
       );
  }
}


