import 'package:dio/dio.dart';
import 'package:e_commerce/models/category_model.dart';
import 'package:e_commerce/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Categories extends ConsumerWidget {
  List<Category> categoriesData = [];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<Response> categories = ref.watch(categoryProvider);
    return categories.when(
      data: (response) {
        categoriesData.clear();
        for (var element in response.data) {
          categoriesData.add(Category.fromJson(element));
        }
        return Container(
          height: 110,
          child: ListView.builder(
            itemCount: categoriesData.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 37,
                      child: CircleAvatar(
                        radius: 34,
                        backgroundImage:
                            NetworkImage(categoriesData[index].image!),
                      ),
                    ),
                  ),
                  Text(
                    categoriesData[index].name!,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              );
            },
          ),
        );
      },
      error: (err, stack) => Text('Error: $err'),
      loading: () {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
