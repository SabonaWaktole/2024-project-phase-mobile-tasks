
import '../domain/entities/product.dart';
import '../domain/repositories/product_repository.dart';
class ProductRepositoryImpl implements ProductRepository {
  final List<Product> _products = [];

  @override
  Future<List<Product>> getAllProducts() async {
    return _products;
  }

  @override
  Future<Product> getProductById(String id) async {
    return _products.firstWhere((product) => product.id == id);
  }

  @override
  Future<void> addProduct(Product product) async {
    _products.add(product);
  }

  @override
  Future<void> updateProduct(Product product) async {
    final index = _products.indexWhere((p) => p.id == product.id);
    if (index != -1) {
      _products[index] = product;
    }
  }

  @override
  Future<void> deleteProduct(String id) async {
    _products.removeWhere((product) => product.id == id);
  }
}
