import 'package:flutter/material.dart';
import 'package:hungybusters/components/BottomNavBar.dart';
import 'package:hungybusters/components/CartItemCard.dart';
import 'package:hungybusters/components/MediumButton.dart';

import '../components/PopCard.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(left: 18.0),
                        alignment: Alignment.centerLeft,
                        child: Text('Order Summary', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                    ),
                    CartItemCard(title: "Tex Mex BBQ", rating: 4.5, price: 100,),
                    CartItemCard(title: "Chicken Burger", rating: 4.0, price: 50,),
                    CartItemCard(title: "Chicken Wings", rating: 4.0, price: 50,),
                    CartItemCard(title: "Chicken Burger", rating: 4.0, price: 50,),
                    CartItemCard(title: "Chicken Wings", rating: 4.0, price: 50,),
                  ],
                ),
              ),
            ),
          ),
          MediumButton(
              text: "Checkout",
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return PopUpCard(); // Show the pop-up card
                  },
                );
          }),
        ],
      ),
    );
  }
}
