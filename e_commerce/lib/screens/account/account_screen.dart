import 'package:e_commerce/screens/account/widgets/account_options.dart';
import 'package:e_commerce/screens/account/widgets/account_title.dart';
import 'package:e_commerce/screens/account/widgets/account_user.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountTitle(),
            SizedBox(height: 32,),
            AccountUser(),
            SizedBox(height: 32,),
            AccountOptions(),
          ],
        ),
      ),
    );
  }
}
