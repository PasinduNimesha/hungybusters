import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungybusters/components/Rating.dart';

class ItemBody extends StatelessWidget {
  final String name;
  final double rating;
  final double price;
  final String description;
  const ItemBody({super.key, required this.name, required this.rating, required this.price, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),

            ),
            Icon(Icons.favorite),
          ],
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: Text(description)),
        Rating(rating: rating)
      ],
    );
  }
}
