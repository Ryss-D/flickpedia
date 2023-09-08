import 'package:flickpedia/presentation/widgets/draggable/main_draggable.dart';
import 'package:flutter/material.dart';

class MoviesCatalogScreen extends StatelessWidget {
  const MoviesCatalogScreen ({super.key});
 static const routeName = '/movies-catalog';


  @override
  Widget build(BuildContext context) {
    //inject result via bloc
    return Scaffold(body:MainDraggable(mainCategories:[]));
  }
}