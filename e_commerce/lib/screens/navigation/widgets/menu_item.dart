import 'package:flutter/material.dart';

class MyMenuItem {
  final IconData iconData;
  final String? text;
  double size;
  Color color;

  MyMenuItem({
    required this.iconData,
    this.text,
    this.size = 30,
    this.color = Colors.white,
  });
}

List<MyMenuItem> menuItemList = [
  MyMenuItem(iconData: Icons.person),
  MyMenuItem(iconData: Icons.home),
  MyMenuItem(iconData: Icons.shopping_cart),
];
