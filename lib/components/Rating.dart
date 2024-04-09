import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < 5; i++)
          Icon(
            i < rating ? Icons.star : Icons.star_border,
            color: Colors.red,
          ),
        Text('$rating'),
      ],
    );
  }
}