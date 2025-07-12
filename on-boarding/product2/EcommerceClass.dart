import 'ProductClass.dart';

class Ecommerce extends ProductManager{
  void addProductToEcommerce(Product product) {
    addProduct(product);
  }

  void deleteProductFromEcommerce(String name) {
    deleteProduct(name);
  }

  void viewAllProductsInEcommerce() {
    List<Product> products = viewAllProduct();
    for (var product in products) {
      print('Product Name: ${product.name}, Price: ${product.price}');
    }
  }

  Product viewProductInEcommerce(String name) {
    return viewSingleProduct(name);
  }

  void updateProductInEcommerce(String name, Product updatedProduct) {
    updateProduct(name, updatedProduct);
  }
}