import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hungybusters/components/Logo.dart';
import 'package:hungybusters/components/InputField.dart';
import 'package:hungybusters/components/MediumButton.dart';
import 'package:hungybusters/components/TransparentButton.dart';

import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(),
            InputField(label: 'Username'),
            InputField(label: 'Password'),
            TransparentButton(text: "Forgot Password?"),
            MediumButton(
                text: "Sign In",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen())
                  );
                }),
          ],
        ),
      ),
    );
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }
}
