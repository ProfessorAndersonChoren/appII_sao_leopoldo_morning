import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/ic_avatar_1.jpg'),
        ),
        Text('Nome'),
      ],
    );
  }
}
