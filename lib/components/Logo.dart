import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 150.0,
      child: Image.asset("assets/splash.png")
    );
  }
}
