import 'package:http/http.dart' as http;

import '../../../../core/error/exceptions.dart';
import '../../../../core/utils/json_helper.dart';
import '../models/product_model.dart';
import 'product_remote_data_source.dart';

class ProductRemoteDatasourceImpl implements ProductRemoteDataSource {
  final http.Client client;

  ProductRemoteDatasourceImpl({required this.client});

  Future<List<ProductModel>> getProducts() async {
    final response = await client.get(
      Uri.parse('https://g5-flutter-learning-path-be.onrender.com/products'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return JsonHelper.decodeFromStringList<ProductModel>(
        response.body,
        (json) => ProductModel.fromJson(json),
      );
    } else {
      throw ServerException();
    }
  }

  @override
  Future<void> createProduct(ProductModel product) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteProduct(String id) {
    throw UnimplementedError();
  }

  @override
  Future<List<ProductModel>> fetchAllProducts() {
    throw UnimplementedError();
  }

  @override
  Future<ProductModel> fetchProductById(String id) {
    throw UnimplementedError();
  }

  @override
  Future<void> updateProduct(ProductModel product) {
    throw UnimplementedError();
  }
}
