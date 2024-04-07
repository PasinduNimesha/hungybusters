import 'package:flutter/material.dart';
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
            child: const Text('Good Morning, User!')),
      ),
      drawer: SideDrawer(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: SearchBar(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.blue, // Replace this with your content for the second part
            child: Center(
              child: Text('Second Part'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.green, // Replace this with your content for the third part
            child: Center(
              child: Text('Third Part'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.yellow, // Replace this with your content for the fourth part
            child: Center(
              child: Text('Fourth Part'),
            ),
          ),
        ],
      ),
    );
  }
}


