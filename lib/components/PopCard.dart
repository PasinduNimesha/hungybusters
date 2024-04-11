import 'package:flutter/material.dart';
import 'package:hungybusters/components/OrderSummary.dart';

class PopUpCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          OrderSummary(),
          SizedBox(height: 16),
          Text(
            'This is the content of the pop-up card.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the pop-up card
            },
            child: Text('Close'),
          ),
        ],
      ),
    );
  }
}