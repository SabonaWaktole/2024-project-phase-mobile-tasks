import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/utils/json_helper.dart';
import '../models/product_model.dart';
import 'product_local_data_source.dart';

class ProductLocalDataSourceImpl implements ProductLocalDataSource {
  static const cachedProductsKey = 'CACHED_PRODUCTS';

  final SharedPreferences sharedPreferences;

  ProductLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheProducts(List<ProductModel> products) {
    final jsonProductList =
        JsonHelper.encodeToStringList(products, (product) => product.toJson());
    return sharedPreferences.setStringList(cachedProductsKey, jsonProductList);
  }

  @override
  Future<List<ProductModel>> getCachedProducts() {
    final jsonProductList = sharedPreferences.getStringList(cachedProductsKey);

    if (jsonProductList != null && jsonProductList.isNotEmpty) {
      final products = JsonHelper.decodeFromStringList(
        '[${jsonProductList.join(",")}]',
        (json) => ProductModel.fromJson(json),
      );
      return Future.value(products);
    } else {
      throw CacheException('No cached products found');
    }
  }
}
