import 'package:flutter/material.dart';
import 'package:hungybusters/components/BottomNavBar.dart';

import 'CheckoutScreen.dart';
import 'HomeScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    const CheckoutScreen(),
    const Placeholder(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavBar(currentIndex: 0,),
    );
  }
}
