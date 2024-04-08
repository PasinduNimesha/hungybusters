import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungybusters/components/FoodCard.dart';
import 'package:hungybusters/components/OfferWindow.dart';

import '../components/SideDrawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            alignment: Alignment.centerRight,
            child: const Text('Good Morning, User!')
        ),
      ),
      drawer: const SideDrawer(),
      body: Column(
        children: [
          Container(
            child: const SearchBar(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.blue,
            child: const Center(
              child: Text('Second Part'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.green,
            child: const Center(
              child: Text('Third Part'),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FoodCard(name: "Burger", price: 10.0, description: "This is a burger", rating: 3.5, onPressed: (){},),
                  FoodCard(name: "Pizza", price: 15.0, description: "This is a pizza", rating: 4.5, onPressed: (){},),
                  FoodCard(name: "Pasta", price: 12.0, description: "This is a pasta", rating: 4.0, onPressed: (){},),
                  FoodCard(name: "Salad", price: 8.0, description: "This is a salad", rating: 3.0, onPressed: (){},),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      )
    );

  }
}


