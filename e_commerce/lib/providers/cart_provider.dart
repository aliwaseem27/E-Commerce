import 'package:e_commerce/repositories/cart_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

CartRepository _cartProvider = CartRepository();

final cartProvider = FutureProvider((ref) => _cartProvider.getProducts());
