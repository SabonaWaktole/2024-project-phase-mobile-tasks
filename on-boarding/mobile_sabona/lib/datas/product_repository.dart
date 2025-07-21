import 'product.dart';
import 'product_storage.dart';

//TODO Make the highly rated product appear at top of search by sorting each product list by the product rating

class ProductRepository {
  static List<Product> getAllProduct(){
    return ProductStorage.product;
  }

  static Product getProductById(int id) {
  return ProductStorage.product.firstWhere(
    (product) => product.id == id,
  );
}


static List<Product> getProductsByCategory(String category) {
    return ProductStorage.product
        .where((product) => product.category == category)
        .toList();
  }

static List<Product> getProductByPriceRange(int minimum, int maximum){
  return ProductStorage.product
  .where((product) => (product.price <= maximum && product.price >= minimum))
  .toList();
}

static List<Product> getProductByName(String productName) {
  return ProductStorage.product
      .where((product) =>
          product.name.toLowerCase().contains(productName.toLowerCase()))
      .toList();
}

}
