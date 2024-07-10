import 'package:flutter/material.dart';

class ETChip extends StatelessWidget {
  const ETChip({super.key, required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.grey[200]),
      child: Text(content.toString(), style: Theme.of(context).textTheme.labelLarge,),
    );
  }
}
