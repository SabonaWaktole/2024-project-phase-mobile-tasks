import 'dart:convert';

import 'package:ecommerce_app/features/ecommerce/data/datasource/product_local_data_impl.dart';
import 'package:ecommerce_app/features/ecommerce/data/models/product_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'product_local_data_impl_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main() {
  late ProductLocalDataSourceImpl dataSource;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = ProductLocalDataSourceImpl(
      sharedPreferences: mockSharedPreferences,
    );
  });

  const cachedKey = ProductLocalDataSourceImpl.cachedProductsKey;

  final tProductModel = ProductModel(
    id: '1',
    name: 'Test Product',
    description: 'Test Description',
    imageUrl: 'http://image.url',
    price: 9.99,
  );

  final tProductModelList = [tProductModel];

  group('cacheProducts', () {
    test(
      'should call SharedPreferences to cache the list of products',
      () async {
        final expectedJsonList = tProductModelList
            .map((product) => json.encode(product.toJson()))
            .toList();

        when(
          mockSharedPreferences.setStringList(any, any),
        ).thenAnswer((_) async => true);

        await dataSource.cacheProducts(tProductModelList);

        verify(
          mockSharedPreferences.setStringList(cachedKey, expectedJsonList),
        );
      },
    );
  });

  group('getCachedProducts', () {
    test(
      'should return list of ProductModels from SharedPreferences when there is cached data',
      () async {
        final jsonStringList = tProductModelList
            .map((product) => json.encode(product.toJson()))
            .toList();

        when(
          mockSharedPreferences.getStringList(cachedKey),
        ).thenReturn(jsonStringList);

        final result = await dataSource.getCachedProducts();

        expect(result, equals(tProductModelList));
      },
    );

    test('should throw CacheException when there is no cached data', () {
      when(mockSharedPreferences.getStringList(cachedKey)).thenReturn(null);

      expect(
        () => dataSource.getCachedProducts(),
        throwsA(isA<CacheException>()),
      );
    });
  });
}
