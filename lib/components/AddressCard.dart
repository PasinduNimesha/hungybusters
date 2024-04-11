import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Address'),
              Text('Edit'),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              const Text('1234 Main St,'),
              const Text('New York'),
              const Text('United States'),
            ],
          ),
        ],
      ),
    );
  }
}
