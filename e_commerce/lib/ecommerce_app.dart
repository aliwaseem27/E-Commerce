import 'package:e_commerce/screens/location/location_screen.dart';
import 'package:e_commerce/screens/onBoarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/screens/navigation/navigation_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: OnBoardingScreen.id,
      routes: {
        NavigationScreen.id: (context) => NavigationScreen(),
        OnBoardingScreen.id: (context) => OnBoardingScreen(),
        LocationScreen.id: (context) => LocationScreen(),
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        // Locale('ar', ''),
        Locale('en', ''),
      ],

    );
  }
}