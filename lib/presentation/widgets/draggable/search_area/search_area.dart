import 'package:flickpedia/presentation/widgets/draggable/search_area/main_message.dart';
import 'package:flickpedia/presentation/widgets/draggable/search_area/movies_search_bar.dart';
import 'package:flutter/material.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        MainMessage(),
        MoviesSearchBar(),
      ],
    ));
  }
}
