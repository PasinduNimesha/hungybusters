import 'package:flutter/material.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              const Text('Credit Card'),
              const Icon(Icons.credit_card),
            ],
          ),
          Row(
            children: [
              const Text('PayPal'),
              const Icon(Icons.payment),
            ],
          ),
          Row(
            children: [
              const Text('Cash'),
              const Icon(Icons.money),
            ],
          ),
        ],
      )
    );
  }
}
