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
            child: const Text('Good Morning, User!')
        ),
      ),
      drawer: const SideDrawer(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: SearchBar(),
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
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.yellow,
            child: const Center(
              child: Text('Fourth Part'),
            ),
          ),
        ],
      ),
    );
  }
}


