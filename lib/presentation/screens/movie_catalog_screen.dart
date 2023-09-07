import 'package:flickpedia/presentation/widgets/draggable/main_draggable.dart';
import 'package:flutter/material.dart';

class MovieCatalogScreen extends StatelessWidget {
  const MovieCatalogScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:MainDraggable());
  }
}