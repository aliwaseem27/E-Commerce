import 'package:e_commerce/repositories/home_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

HomeRepository _homeRepository = HomeRepository();

final categoryProvider =
FutureProvider((ref) => _homeRepository.getCategories());

final productProvider = FutureProvider((ref) => _homeRepository.getProducts());