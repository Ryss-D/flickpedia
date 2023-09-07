import 'package:flutter/material.dart';

class ActorDetails extends StatelessWidget {
  const ActorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Image(image:NetworkImage("thtecom")),
        Text("Text"),
      ],
    ));
  }
}
