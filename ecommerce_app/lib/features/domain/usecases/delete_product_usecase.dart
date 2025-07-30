abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

class DeleteProductUsecase extends UseCase<void, String> {
  final ProductRepository repository;

  DeleteProductUsecase(this.repository);

  @override
  Future<void> call(String productId) {
    return repository.deleteProduct(productId);
  }
}

abstract class ProductRepository {
  Future<void> deleteProduct(String id);
}
