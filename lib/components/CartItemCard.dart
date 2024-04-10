import 'package:flutter/material.dart';
import 'package:hungybusters/components/ChangeAmount.dart';
import 'package:hungybusters/components/Rating.dart';

class CartItemCard extends StatelessWidget {
  final String title;
  final double rating;
  final double price;
  const CartItemCard({super.key, required this.title, required this.rating, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Rating(rating: rating),
                Container(
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$ $price', style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),),
                      ChangeAmount()
                    ],
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
