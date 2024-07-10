import 'package:flutter/material.dart';

class ETStatCard extends StatelessWidget {
  const ETStatCard({super.key, required this.content, required this.title});

  final String content;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey[200], 
          borderRadius: BorderRadius.circular(20.0)),
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\u20B9$content',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
