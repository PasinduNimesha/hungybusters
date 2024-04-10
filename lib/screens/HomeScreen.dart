import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungybusters/components/FoodCard.dart';
import 'package:hungybusters/components/OfferWindow.dart';

import '../components/BottomNavBar.dart';
import '../components/CategoryIcon.dart';
import '../components/SideDrawer.dart';
import 'ItemDetailScreen.dart';

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
          const SearchBar(),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.blue,
            child: const Center(
              child: Text('Second Part'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryIcon(),
                  CategoryIcon(),
                  CategoryIcon(),
                  CategoryIcon(),
                  CategoryIcon(),
                  CategoryIcon(),
                  CategoryIcon(),
                  CategoryIcon(),
                  CategoryIcon(),
                  CategoryIcon(),
                  CategoryIcon(),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FoodCard(name: "Burger", price: 10.0, description: "This is a burger", rating: 3.5, onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemDetailScreen()));
                  },),
                  FoodCard(name: "Pizza", price: 15.0, description: "This is a pizza", rating: 4.5, onPressed: (){},),
                  FoodCard(name: "Pasta", price: 12.0, description: "This is a pasta", rating: 4.0, onPressed: (){},),
                  FoodCard(name: "Salad", price: 8.0, description: "This is a salad", rating: 3.0, onPressed: (){},),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}



