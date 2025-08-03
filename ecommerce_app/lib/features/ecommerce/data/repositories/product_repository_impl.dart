import '../../../../core/network/network_info.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../datasource/product_local_data_source.dart';
import '../datasource/product_remote_data_source.dart';
import '../models/product_model.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;
  final ProductLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  ProductRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<List<Product>> getAllProducts() async {
    final isOnline = await networkInfo.isConnected;

    if (isOnline) {
      final remoteModels = await remoteDataSource.fetchAllProducts();
      await localDataSource.cacheProducts(remoteModels);
      return remoteModels.map((m) => m.toEntity()).toList();
    } else {
      final localModels = await localDataSource.getCachedProducts();
      return localModels.map((m) => m.toEntity()).toList();
    }
  }

  @override
  Future<Product> getProductById(String id) async {
    final model = await remoteDataSource.fetchProductById(id);
    return model.toEntity();
  }

  @override
  Future<void> addProduct(Product product) async {
    final model = ProductModel.fromEntity(product);
    await remoteDataSource.createProduct(model);
  }

  @override
  Future<void> updateProduct(Product product) async {
    final model = ProductModel.fromEntity(product);
    await remoteDataSource.updateProduct(model);
  }

  @override
  Future<void> deleteProduct(String id) async {
    await remoteDataSource.deleteProduct(id);
  }
}
