import 'package:flutter/material.dart';
import 'package:hungybusters/screens/CheckoutScreen.dart';
import 'package:hungybusters/screens/HomeScreen.dart';

class BottomNavBar extends StatefulWidget {
  final int currentIndex;
  const BottomNavBar({
    super.key,
    required this.currentIndex,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    const CheckoutScreen(),
    const CheckoutScreen(),
    const CheckoutScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    currentIndex = widget.currentIndex;
    return BottomNavigationBar(
      selectedIconTheme: IconThemeData(color: Colors.black),
      unselectedIconTheme: IconThemeData(color: Colors.red),
      onTap: (int index) {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _children[index]));
      },
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_outlined),
          label: 'Location',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Checkout',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}