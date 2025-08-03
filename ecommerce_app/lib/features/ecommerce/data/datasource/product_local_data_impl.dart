import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/product_model.dart';
import 'product_local_data_source.dart';

class ProductLocalDataSourceImpl implements ProductLocalDataSource {
  static const cachedProductsKey = 'CACHED_PRODUCTS';

  final SharedPreferences sharedPreferences;

  ProductLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheProducts(List<ProductModel> products) {
    final List<String> jsonProductList =
        products.map((product) => json.encode(product.toJson())).toList();

    return sharedPreferences.setStringList(cachedProductsKey, jsonProductList);
  }

  @override
  Future<List<ProductModel>> getCachedProducts() {
    final jsonProductList = sharedPreferences.getStringList(cachedProductsKey);

    if (jsonProductList != null && jsonProductList.isNotEmpty) {
      final products = jsonProductList
          .map((jsonProduct) => ProductModel.fromJson(json.decode(jsonProduct)))
          .toList();
      return Future.value(products);
    } else {
      throw CacheException('No cached products found');
    }
  }
}

// You can define CacheException in a separate file for clean error handling
class CacheException implements Exception {
  final String message;
  CacheException(this.message);

  @override
  String toString() => 'CacheException: $message';
}
