import 'package:flutter/material.dart';

class CartTitle extends StatelessWidget {
  const CartTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.teal.shade400,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Text(
        "My Cart",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
