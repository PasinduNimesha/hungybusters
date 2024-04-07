import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  final String text;
  const TransparentButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16
          ),
      ),
    );
  }
}
