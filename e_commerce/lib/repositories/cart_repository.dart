import 'package:dio/dio.dart';
import 'package:e_commerce/utils/network.dart';

class CartRepository {
  Future<Response> getProducts() async {
    return await Network.dio.get("products");
  }
}