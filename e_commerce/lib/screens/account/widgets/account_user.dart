import 'package:flutter/material.dart';

class AccountUser extends StatelessWidget {
  const AccountUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 41,
          backgroundColor: Colors.teal,
          child: CircleAvatar(
            radius: 38,
            backgroundImage: AssetImage("assets/personal.jpg"),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            Text(
              "Ali Waseem",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "ali.waseem27@gmail.com",
              style: TextStyle(
                color: Colors.grey.shade800,
              ),
            ),
          ],
        )
      ],
    );
  }
}
