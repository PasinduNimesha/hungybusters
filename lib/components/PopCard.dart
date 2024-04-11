import 'package:flutter/material.dart';
import 'package:hungybusters/components/AddressCard.dart';
import 'package:hungybusters/components/OrderSummary.dart';
import 'package:hungybusters/components/PaymentMethodCard.dart';

class PopUpCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            OrderSummary(),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Apply Coupon Code',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 40),
            AddressCard(),
            SizedBox(height: 16),
            PaymentMethodCard(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the pop-up card
              },
              child: Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}