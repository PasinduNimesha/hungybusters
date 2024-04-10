import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungybusters/components/BottomNavBar.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          Text('Order Summary'),
        ],
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 2,),
    );
  }
}
