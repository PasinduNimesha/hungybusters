import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBody extends StatelessWidget {
  const ItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
        ),
      ],
    );
  }
}
