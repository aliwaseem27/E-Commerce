import 'package:e_commerce/screens/home/widgets/categories_widget.dart';
import 'package:e_commerce/screens/home/widgets/delivery_address.dart';
import 'package:e_commerce/screens/home/widgets/products_widget.dart';
import 'package:e_commerce/screens/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DeliveryAddress(),
          SearchBar(),
          Categories(),
          Products(),
        ],
      ),
    );
  }
}
