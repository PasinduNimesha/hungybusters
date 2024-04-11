import 'package:flutter/material.dart';
import 'package:hungybusters/components/AddressCard.dart';
import 'package:hungybusters/components/OrderSummary.dart';
import 'package:hungybusters/components/PaymentMethodCard.dart';

class PopUpCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const OrderSummary(),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Apply Coupon Code',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 40),
            const AddressCard(),
            const SizedBox(height: 16),
            const PaymentMethodCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the pop-up card
                  },
                  child: const Text('Close'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the pop-up card
                  },
                  child: const Text('Confirm'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}