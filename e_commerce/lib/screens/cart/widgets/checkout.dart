import 'package:flutter/material.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.teal,
          maximumSize: Size(MediaQuery.of(context).size.width* 0.90, 50),
        ),
        child: Center(
          child: Text(
            "Procced to Checkout",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
