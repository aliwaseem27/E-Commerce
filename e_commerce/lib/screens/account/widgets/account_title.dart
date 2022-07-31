import 'package:flutter/material.dart';

class AccountTitle extends StatelessWidget {
  const AccountTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "My Profile",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
