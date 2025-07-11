class Product{
  String name, description;
  double price;

  Product(this.name, this.description, this.price){
    if(name.isEmpty || price <= 0){
      throw Exception("Invalid Product details");
    }
  }


}

class Productanager{
  Map<String,Product> Products = {};

  void addProduct(Product product){
    Products[product.name] = product;
  }

  List<Product> viewAllProduct(){
    return Products.values.toList();
  }

  Product viewSingleProduct(String name){

    if(Products.containsKey(name)){
      return Products[name]!;
    } else{
      throw Exception("Product not found");
    }
  }
  
  void deleteProduct(String name){
    if(Products.containsKey(name)){
      Products.remove(name);
    } else{
      throw Exception("Product not found");
    }
  }

  
  }
