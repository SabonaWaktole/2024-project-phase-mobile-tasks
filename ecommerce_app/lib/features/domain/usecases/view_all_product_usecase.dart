import '../entities/product.dart';

abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

class ViewAllProductsUsecase extends UseCase<List<Product>, void> {
  final ProductRepository repository;

  ViewAllProductsUsecase(this.repository);

  @override
  Future<List<Product>> call(void params) {
    return repository.getAllProducts();
  }
}

abstract class ProductRepository {
  Future<List<Product>> getAllProducts();
}
