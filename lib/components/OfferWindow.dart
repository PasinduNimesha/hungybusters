import 'package:flutter/material.dart';

class OfferWindow extends StatelessWidget {
  const OfferWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
