import 'package:dio/dio.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Products extends ConsumerWidget {
  List<Product> productsData = [];

  Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<Response> products = ref.watch(productProvider);
    return products.when(
      data: (response) {
        productsData.clear();
        for (var element in response.data) {
          productsData.add(Product.fromJson(element));
        }
        // deleting the first element because it has corrupted data,
        // which breaks the design (I do that I need to correct the design rather than the data)
        productsData.removeAt(0);
        return Container(
          height: 425,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: productsData.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    color: Colors.grey.shade200,
                    margin: EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      leading: Image.network(
                        productsData[index].images!.first,
                        fit: BoxFit.fill,
                      ),
                      title: Text(
                        productsData[index].title!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(productsData[index].description!),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${productsData[index].price!.toString()} \$",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 18),
                          ),
                          Icon(Icons.favorite_border_outlined),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      tileColor: Colors.white,
                    ),
                  ),
                ],
              );
            },
          ),
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
        ));
      },
      loading: () {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
