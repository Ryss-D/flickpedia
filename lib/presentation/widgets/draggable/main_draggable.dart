import 'package:draggable_home/draggable_home.dart';
import 'package:flickpedia/data/models/movies_list.dart';
import 'package:flickpedia/presentation/widgets/draggable/category_carrousel.dart';
import 'package:flickpedia/presentation/widgets/draggable/search_area/movies_search_bar.dart';
import 'package:flickpedia/presentation/widgets/draggable/search_area/search_area.dart';
import 'package:flutter/material.dart';

class MainDraggable extends StatelessWidget {
  const MainDraggable({super.key, required this.mainCategories});

  final List<MovieList> mainCategories;

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      headerWidget: const SearchArea(),
      expandedBody: const SearchArea(),
  title: const MoviesSearchBar(expanded: true,),
  body: [
    SizedBox(
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 0),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: mainCategories.length,
        itemBuilder: (context, index) => 
            CategoryCarrousel(movieList: mainCategories[index],), 
      ),
    ),

  ]
);
  }
}