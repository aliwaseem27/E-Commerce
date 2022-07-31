import 'package:dio/dio.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/providers/cart_provider.dart';
import 'package:e_commerce/screens/cart/widgets/cart_item.dart';
import 'package:e_commerce/screens/cart/widgets/cart_title.dart';
import 'package:e_commerce/screens/cart/widgets/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';

class CartScreen extends ConsumerWidget {
  List<Product> cartProductsData = [];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<Response> cartProducts = ref.watch(cartProvider);
    return cartProducts.when(
      data: (response) {
        cartProductsData.clear();
        for (var element in response.data) {
          cartProductsData.add(Product.fromJson(element));
        }
        cartProductsData.shuffle();
        Random random = Random();
        int randomLength = random.nextInt(6);

        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CartTitle(),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: randomLength,
                itemBuilder: (BuildContext context, int index) {
                  return CartItem(
                    productImage: cartProductsData[index].images!.first,
                    productPrice: cartProductsData[index].price.toString(),
                    productTitle: cartProductsData[index].title!,
                  );
                },
              ),
            ),
            CheckOutButton(),
            SizedBox(height: 20,),
          ],
        );
      },
      error: (err, stack) {
        return Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Retry"),
              ),
              Text('Some error happened: $err'),
            ],
          ),
        );
      },
      loading: () {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
