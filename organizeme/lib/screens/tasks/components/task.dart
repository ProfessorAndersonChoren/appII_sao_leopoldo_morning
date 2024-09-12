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
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Chip(
                  label: Text(category),
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.access_time,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  hour.format(context),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
