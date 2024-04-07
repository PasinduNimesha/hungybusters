import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 10.0,
        width: 300.0,
        child: const TextField(
          decoration: InputDecoration(
            labelText: 'Search',
            labelStyle: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
      )
    );
  }
}
