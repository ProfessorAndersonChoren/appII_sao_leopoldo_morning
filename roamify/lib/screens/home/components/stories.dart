import 'package:flutter/material.dart';
import 'package:roamify/screens/home/components/story.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Stories'),
        Row(
          children: [
            Story(),
            Story(),
            Story(),
          ],
        ),
      ],
    );
  }
}
