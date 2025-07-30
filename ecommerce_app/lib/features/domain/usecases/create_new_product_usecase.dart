import '../entities/product.dart';

abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

class CreateProductUsecase extends UseCase<void, Product> {
  final ProductRepository repository;

  CreateProductUsecase(this.repository);

  @override
  Future<void> call(Product product) {
    return repository.addProduct(product);
  }
}

abstract class ProductRepository {
  Future<void> addProduct(Product product);
}
