import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeAmount extends StatelessWidget {
  const ChangeAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 35,
          height: 35,
          child: IconButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(const BorderSide(color: Colors.red)),
            ),
            iconSize: 20,
            icon: const Icon(Icons.remove),
            onPressed: () {},
          ),
        ),
        Container(
            width: 20,
            alignment: Alignment.center,
            child: const Text('1', style: TextStyle(fontSize: 20),)

        ),
        SizedBox(
          width: 35,
          height: 35,
          child: IconButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(const BorderSide(color: Colors.red)),
            ),
            iconSize: 20,
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
