import 'package:flutter/material.dart';
import 'package:roamify/screens/home/components/story.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Stories',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 28),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Story(
              name: 'Guy Hawkins',
              urlImg: 'assets/ic_avatar_1.jpg',
            ),
            Story(
              name: 'Cameron Williamson',
              urlImg: 'assets/ic_avatar_2.jpg',
            ),
            Story(
              name: 'Robert Fox',
              urlImg: 'assets/ic_avatar_3.jpg',
            ),
          ],
        ),
      ],
    );
  }
}
