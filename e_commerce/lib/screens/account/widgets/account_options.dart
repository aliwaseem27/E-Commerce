import 'package:e_commerce/screens/account/widgets/option_card.dart';
import 'package:flutter/material.dart';

class AccountOptions extends StatelessWidget {
  const AccountOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        OptionCard(cardTitle: "My orders", cardHint: "Already have 12 orders"),
        OptionCard(cardTitle: "Shipping addresses", cardHint: "3 addresses"),
        OptionCard(cardTitle: "Payment methods", cardHint: "Visa **34"),
        OptionCard(cardTitle: "Promocodes", cardHint: "You have special promocodes"),
        OptionCard(cardTitle: "My reviews", cardHint: "Reviews for 4 items"),
        OptionCard(cardTitle: "Settings", cardHint: "Notifications, password"),
      ],
    );
  }
}
