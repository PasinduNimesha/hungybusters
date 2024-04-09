import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungybusters/components/ItemBody.dart';
import 'package:hungybusters/components/ItemImage.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const ItemImage(),
          ItemBody(name: "Burger", price: 10.0, description: "This is a burger ", rating: 3.5),

        ],
      ),
    );
  }
}
