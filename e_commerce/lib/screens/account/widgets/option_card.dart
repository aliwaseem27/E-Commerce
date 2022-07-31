import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String cardTitle;
  final String cardHint;

  const OptionCard({Key? key, required this.cardTitle, required this.cardHint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cardTitle,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                Text(cardHint,style: TextStyle(color: Colors.grey.shade600),),
              ],
            ),
            Icon(Icons.keyboard_arrow_right, color: Colors.teal,),
          ],
        ),
      ),
    );
  }
}
