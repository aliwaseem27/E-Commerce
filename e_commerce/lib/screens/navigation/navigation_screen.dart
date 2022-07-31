import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce/screens/account/account_screen.dart';
import 'package:e_commerce/screens/cart/cart_screen.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/screens/navigation/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  static const String id = "navigation_screen";

  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _page = 1;
  List<Widget> _screens = [
    AccountScreen(),
    HomeScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_page],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white.withOpacity(0),
          color: Colors.teal.shade700,
          height: 60.0,
          index: 1,
          letIndexChange: (index) => true,
          onTap: (int index) {
            setState(() {
              _page = index;
            });
          },
          items: menuItemList
              .map((MyMenuItem menuItem) => Icon(
                    menuItem.iconData,
                    size: menuItem.size,
                    color: menuItem.color,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
