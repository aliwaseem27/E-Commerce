import 'package:e_commerce/ecommerce_app.dart';
import 'package:e_commerce/init_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  InitializeApp.initApp();
  runApp(const ProviderScope(
    child: EcommerceApp(),
  ));
}
