import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xFF9747FF),
              radius: 25,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ic_avatar_2.jpg'),
                radius: 22,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Cameron Williamson',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Image.asset('assets/ic_photo.jpg'),
        ),
      ],
    );
  }
}
