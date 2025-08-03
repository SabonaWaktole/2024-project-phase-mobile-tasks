
import 'dart:convert';
import 'package:ecommerce_app/core/error/exceptions.dart';
import 'package:ecommerce_app/features/ecommerce/data/datasource/product_remote_data_impl.dart';
import 'package:ecommerce_app/features/ecommerce/data/models/product_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'product_remote_data_impl_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late ProductRemoteDatasourceImpl dataSource;
  late MockClient mockClient;

  setUp(() {
    mockClient = MockClient();
    dataSource = ProductRemoteDatasourceImpl(client: mockClient);
  });

  final tProductModelList = [
    ProductModel(
      id: '1',
      name: 'Test Product',
      description: 'Test Description',
      imageUrl: 'http://image.url',
      price: 9.99,
    ),
  ];

  group('getProducts', () {
    test('should return product list when response code is 200', () async {
      when(mockClient.get(any, headers: anyNamed('headers'))).thenAnswer(
        (_) async => http.Response(json.encode([
          {
            'id': '1',
            'name': 'Test Product',
            'description': 'Test Description',
            'imageUrl': 'http://image.url',
            'price': 9.99,
          }
        ]), 200),
      );

      final result = await dataSource.getProducts();

      expect(result, equals(tProductModelList));
    });

    test('should throw ServerException when response code is not 200', () async {
      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('Server error', 500));

      expect(() => dataSource.getProducts(), throwsA(isA<ServerException>()));
    });
  });
}
