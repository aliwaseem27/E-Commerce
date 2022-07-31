import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: "Search Products",
          prefixIcon: Icon(Icons.search),
          iconColor: Colors.grey.shade900,
          fillColor: Colors.grey.shade200,
          focusColor: Colors.teal,
          filled: true,
          hintText: "Try \"iPhone 9\"",
          constraints: BoxConstraints(
            maxHeight: 48.0,
            maxWidth: MediaQuery.of(context).size.width * 0.95,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(
              color: Colors.grey.shade900,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.teal),
          ),
        ),
      ),
    );
  }
}
