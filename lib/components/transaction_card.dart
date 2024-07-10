import 'package:flutter/material.dart';

class ETTransactionCard extends StatelessWidget {
  const ETTransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '- \u20B91098',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 20.0),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            'KFC INDIA',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'today',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
