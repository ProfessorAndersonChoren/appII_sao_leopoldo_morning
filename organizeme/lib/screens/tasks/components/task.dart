import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String title;
  final String category;
  final TimeOfDay hour;
  const Task({
    super.key,
    required this.title,
    required this.category,
    required this.hour,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled();
  }
}
