import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungybusters/components/MediumButton.dart';
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
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Rating(rating: rating),
                  Text(
                    '\$ $price',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        MediumButton(text: "Add to Bag", onPressed: () {}),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text("This is a test description I need more text can you fill this for me "),
        ),
      ],
    );
    
  }
}
