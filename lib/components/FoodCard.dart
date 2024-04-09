import 'dart:ffi';

import 'package:flutter/material.dart';

import 'Rating.dart';

class FoodCard extends StatelessWidget {
  final String name;
  final String description;
  final double price;
  final double rating;
  final VoidCallback onPressed;
  const FoodCard({super.key, required this.name, required this.description, required this.price, required this.rating, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onPressed,
        leading: const Icon(Icons.fastfood),
        title: Title(name: name, rating: rating),
        subtitle: Text(description),
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String name;
  final double rating;
  const Title({super.key, required this.name, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name),
            Icon(Icons.favorite),
          ],
        ),
        //display the stars
        Rating(rating: rating),

      ],
    );
  }
}



