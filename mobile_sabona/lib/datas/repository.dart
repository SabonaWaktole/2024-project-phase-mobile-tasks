import 'product.dart';
import 'product_storage.dart';

//TODO Make the highly rated product appear at top of search by sorting each product list by the product rating

class Repository {
  List<Product> getAllProduct(){
    return ProductStorage.product;
  }

  Product getProductById(int id){
    return ProductStorage.product[id];
  }

List<Product> getProductsByCategory(String category) {
    return ProductStorage.product
        .where((product) => product.category == category)
        .toList();
  }

List<Product> getProductByPriceRange(int minimum, int maximum){
  return ProductStorage.product
  .where((product) => (product.price <= maximum && product.price >= minimum))
  .toList();
}

List<Product> returnProductByName(String productName) {
  return ProductStorage.product
      .where((product) =>
          product.name.toLowerCase().contains(productName.toLowerCase()))
      .toList();
}

}
