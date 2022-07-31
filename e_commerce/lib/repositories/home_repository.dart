import 'package:dio/dio.dart';
import 'package:e_commerce/utils/network.dart';

class HomeRepository {
  Future<Response> getCategories() async {
    return await Network.dio.get("categories");
  }

  Future<Response> getProducts() async {
    return await Network.dio.get("products");
  }
}