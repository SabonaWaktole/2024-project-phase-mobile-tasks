import 'package:ecommerce_app/features/ecommerce/data/models/product_model.dart';
import 'package:flutter_test/flutter_test.dart';
void main() {
  group('ProductModel', () {
    final productJson = {
      'id': '1',
      'name': 'Shirt',
      'description': 'A stylish shirt',
      'imageUrl': 'https://example.com/shirt.jpg',
      'price': 49.99,
    };

    final productModel = ProductModel(
      id: '1',
      name: 'Shirt',
      description: 'A stylish shirt',
      imageUrl: 'https://example.com/shirt.jpg',
      price: 49.99,
    );

    test('fromJson returns a valid model', () {
      final result = ProductModel.fromJson(productJson);
      expect(result, productModel);
    });

    test('toJson returns correct map', () {
      final result = productModel.toJson();
      expect(result, productJson);
    });
  });
}
