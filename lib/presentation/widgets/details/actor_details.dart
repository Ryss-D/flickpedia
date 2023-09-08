import 'package:flickpedia/data/constants.dart';
import 'package:flutter/material.dart';

class ActorDetails extends StatelessWidget {
  const ActorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child:const  Column(
      children: [
        Image(image:NetworkImage(Constants.ditoImage)),
        Text( Constants.dito),
      ],
    ));
  }
}
