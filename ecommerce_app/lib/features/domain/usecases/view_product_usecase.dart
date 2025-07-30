import '../entities/product.dart';

abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

class ViewProductUsecase extends UseCase<Product, String> {
  final ProductRepository repository;

  ViewProductUsecase(this.repository);

  @override
  Future<Product> call(String productId) {
    return repository.getProductById(productId);
  }
}

abstract class ProductRepository {
  Future<Product> getProductById(String id);
}
