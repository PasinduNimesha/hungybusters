import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      child: Image.asset('assets/images/item1.jpeg'),
    );
  }
}
