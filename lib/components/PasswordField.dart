import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.red,
          ),
        ),
        obscureText: true,
        obscuringCharacter: "*",
      )
    );
  }
}
