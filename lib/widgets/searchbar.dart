import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        color: Colors.black26, // Set background color to black
        borderRadius: BorderRadius.circular(10), // Set border radius
      ), // Set background color to black
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        // style: const TextStyle(color: Colors.white), // Set text color to white
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: const TextStyle(color: Colors.black),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
