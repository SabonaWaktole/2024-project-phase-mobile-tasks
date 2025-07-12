import 'dart:io';
import 'EcommerceClass.dart';
import 'ProductClass.dart';
void main(){

  Ecommerce ecommerce = Ecommerce();

  

  print("Welcome to the Ecommerce Application");
  print("Please choose an option:");
  print("1. Add Product");
  print("2. View All Products");
  print("3. View Single Product");
  print("4. Delete Product");
  print("5. Update Product");
  print("6. Exit");
  int choice = int.parse(stdin.readLineSync() ?? '0');

  while (choice > 0 && choice < 6) {
    switch (choice)
  {
    case 1:{
      print("Enter product name:");
      String name = stdin.readLineSync() ?? '';
      print("Enter product description (optional):");
      String? description = stdin.readLineSync();
      print("Enter product price:");
      double price = double.parse(stdin.readLineSync() ?? '0');

      ecommerce.addProductToEcommerce(Product(name, description, price));
      print("Product added successfully!");
    }
    break;
    case 2:{
      ecommerce.viewAllProductsInEcommerce();
    }
    break;
    case 3:{
      print("Enter product name to view:");
      String name = stdin.readLineSync() ?? '';
      try{
        Product product = ecommerce.viewProductInEcommerce(name);
        print('Product Name: ${product.name}, Product Ptice: ${product.price}, Description: ${product.description ?? "No description"}');
      }catch (e) {
        print(e);
      }
    }
    break;
    case 4:{
      print("Enter product name to delete:");
      String name = stdin.readLineSync() ?? '';
      if (ecommerce.viewProductInEcommerce(name).name.isEmpty) {
        break;
      }
      try{
        ecommerce.deleteProductFromEcommerce(name);
        print("Product deleted successfully!");
      }catch (e) {
        print(e);
      }
    }
    break;
    case 5:{
      print("Enter product name you wanna update");
      String name = stdin.readLineSync() ?? '';
      if (name.isEmpty) {
        print("Product name cannot be empty");
        break;
      }
      Product oldProduct = ecommerce.viewSingleProduct(name);

      if (oldProduct.name.isEmpty) {
        print("Product not found");
        break;
      }

      print('Current Product Name: ${oldProduct.name}, Price: ${oldProduct.price}, Description: ${oldProduct.description ?? "No description"}');
      print('Enter new product name (current: ${oldProduct.name}): if you want to keep it, just press enter');
      String newName = stdin.readLineSync() ?? oldProduct.name;
      print('Enter new product description (current: ${oldProduct.description ?? "No description"}): if you want to keep it, just press enter');
      String? newDescription = stdin.readLineSync() ?? oldProduct.description;
      print('Enter new product price (current: ${oldProduct.price}): if you want to keep it, just press enter');
      String oldPrice = oldProduct.price.toString();
      String Price = stdin.readLineSync() ?? oldPrice;
      double newPrice = Price.isEmpty ? oldProduct.price : double.parse(Price);

      print("the price you entered is ${newPrice}");

      print('/n new price is    ${newPrice}');

      Product updatedNewProduct = Product(newName, newDescription, newPrice);
      print('Updated Product Name: ${updatedNewProduct.name}, Price: ${updatedNewProduct.price}, Description: ${updatedNewProduct.description ?? "No description"}');
      try {
        ecommerce.updateProductInEcommerce(name, updatedNewProduct);
        print("Product updated successfully!");
      } catch (e) {
        print(e);
      }
    }
    break;
    default:{
      print('exited the program');
    }
    break;
  }

  print("Please enter your option:");
  print("1. Add Product");
  print("2. View All Products");
  print("3. View Single Product");
  print("4. Delete Product");
  print("5. Update Product");
  print("6. Exit");
  int newChoice = int.parse(stdin.readLineSync() ?? '0');

  choice = newChoice;
  }

}



