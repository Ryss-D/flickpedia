import 'package:draggable_home/draggable_home.dart';
import 'package:flickpedia/presentation/widgets/draggable/category_carrousel.dart';
import 'package:flickpedia/presentation/widgets/draggable/search_area/search_area.dart';
import 'package:flutter/material.dart';

class MainDraggable extends StatelessWidget {
  const MainDraggable({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      headerWidget: SearchArea(),
      expandedBody: SearchArea(),
      //created expanded constructor
  title: SearchArea(),
  body: [
    ListView.builder(
      padding: EdgeInsets.only(top: 0),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          title:CategoryCarrousel(), 
        ),
      ),
    ),

  ]
);;
  }
}