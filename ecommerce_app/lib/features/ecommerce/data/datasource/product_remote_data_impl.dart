// lib/features/ecommerce/data/datasource/product_remote_data_impl.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../../core/error/exceptions.dart';
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
      final List decoded = json.decode(response.body);
      return decoded.map((e) => ProductModel.fromJson(e)).toList();
    } else {
      throw ServerException();
    }
  }
  
  @override
  Future<void> createProduct(ProductModel product) {
    // TODO: implement createProduct
    throw UnimplementedError();
  }
  
  @override
  Future<void> deleteProduct(String id) {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }
  
  @override
  Future<List<ProductModel>> fetchAllProducts() {
    // TODO: implement fetchAllProducts
    throw UnimplementedError();
  }
  
  @override
  Future<ProductModel> fetchProductById(String id) {
    // TODO: implement fetchProductById
    throw UnimplementedError();
  }
  
  @override
  Future<void> updateProduct(ProductModel product) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
}
