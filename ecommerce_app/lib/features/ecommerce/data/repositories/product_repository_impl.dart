
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../datasource/product_remote_data.dart';
import '../models/product_model.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl({required this.remoteDataSource});

@override
Future<List<Product>> getAllProducts() async {
  final models = await remoteDataSource.fetchAllProducts();
  return models.map<Product>((model) => model as Product).toList();
}


@override
Future<Product> getProductById(String id) async {
  final model = await remoteDataSource.fetchProductById(id);
  return model as Product;
}



  @override
  Future<void> addProduct(Product product) async {
    final model = ProductModel(
      id: product.id,
      name: product.name,
      description: product.description,
      imageUrl: product.imageUrl,
      price: product.price,
    );
    await remoteDataSource.createProduct(model);
  }

  @override
  Future<void> updateProduct(Product product) async {
    final model = ProductModel(
      id: product.id,
      name: product.name,
      description: product.description,
      imageUrl: product.imageUrl,
      price: product.price,
    );
    await remoteDataSource.updateProduct(model);
  }

  @override
  Future<void> deleteProduct(String id) async {
    await remoteDataSource.deleteProduct(id);
  }
}
