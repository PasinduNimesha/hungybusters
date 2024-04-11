import 'package:flutter/material.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Payment Method'),
              Text('Change', style: TextStyle(color: Colors.red)),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.credit_card),
              SizedBox(width: 10),
              Text('**** **** **** 1234'),
            ],
          ),
        ],
      ),
    );
  }
}
