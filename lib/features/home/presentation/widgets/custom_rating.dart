import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    required this.rating,
    required this.ratingCount,
    super.key,
  });

  final double rating;
  final int ratingCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 18,
        ),
        Text('$rating', style: const TextStyle(fontSize: 18)),
        SizedBox(width: MediaQuery.of(context).size.width * 0.01),
        Text('($ratingCount)',
            style: const TextStyle(fontSize: 18, color: Colors.grey)),
        SizedBox(width: MediaQuery.of(context).size.width * 0.01),
      ],
    );
  }
}
