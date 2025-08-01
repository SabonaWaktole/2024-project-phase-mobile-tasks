import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ecommerce_app/features/ecommerce/data/datasource/product_local_data_source.dart';
import 'package:ecommerce_app/features/ecommerce/data/datasource/product_remote_data.dart';
import 'package:ecommerce_app/features/ecommerce/data/models/product_model.dart';
import 'package:ecommerce_app/features/ecommerce/data/repositories/product_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'product_repository_impl_test.mocks.dart';

@GenerateMocks([
  ProductRemoteDataSource,
  ProductLocalDataSource,
  Connectivity,
])

void main() {
  late ProductRepositoryImpl repository;
  late MockProductRemoteDataSource mockRemote;
  late MockProductLocalDataSource mockLocal;
  late MockConnectivity mockConnectivity;

  setUp(() {
    mockRemote = MockProductRemoteDataSource();
    mockLocal = MockProductLocalDataSource();
    mockConnectivity = MockConnectivity();

    repository = ProductRepositoryImpl(
      remoteDataSource: mockRemote,
      localDataSource: mockLocal,
      connectivity: mockConnectivity,
    );
  });

  final productModel = ProductModel(
    id: '1',
    name: 'Hat',
    description: 'Warm hat',
    imageUrl: 'url',
    price: 10.0,
  );

  final productEntity = productModel.toEntity();

  test('uses remote and caches locally when online', () async {
    when(mockConnectivity.checkConnectivity())
    .thenAnswer((_) async => [ConnectivityResult.wifi]);


    when(mockRemote.fetchAllProducts()).thenAnswer((_) async => [productModel]);

    final result = await repository.getAllProducts();

    expect(result, [productEntity]);
    verify(mockRemote.fetchAllProducts()).called(1);
    verify(mockLocal.cacheProducts([productModel])).called(1);
  });

  test('uses local data when offline', () async {
    when(mockConnectivity.checkConnectivity())
    .thenAnswer((_) async => <ConnectivityResult>[]);

    when(mockLocal.getCachedProducts()).thenAnswer((_) async => [productModel]);

    final result = await repository.getAllProducts();

    expect(result, [productEntity]);
    verify(mockLocal.getCachedProducts()).called(1);
    verifyNever(mockRemote.fetchAllProducts());
  });
}
