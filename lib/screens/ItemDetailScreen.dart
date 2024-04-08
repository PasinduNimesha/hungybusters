import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),

        ],
      ),
    );
  }
}
