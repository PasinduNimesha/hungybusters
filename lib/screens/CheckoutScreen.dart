import 'package:flutter/material.dart';
import 'package:hungybusters/components/BottomNavBar.dart';
import 'package:hungybusters/components/CartItemCard.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: const Column(
          children: [
            Text('Order Summary'),
            CartItemCard(title: "Tex Mex BBQ", rating: 4.5, price: 100,),
            CartItemCard(title: "Chicken Burger", rating: 4.0, price: 50,),
            CartItemCard(title: "Chicken Wings", rating: 4.0, price: 50,),
            CartItemCard(title: "Chicken Burger", rating: 4.0, price: 50,),
            CartItemCard(title: "Chicken Wings", rating: 4.0, price: 50,),
          ],
        ),
      ),
    );
  }
}
