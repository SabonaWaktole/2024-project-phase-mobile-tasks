class Product{
  String name;
  String? description;
  double price;

  Product(this.name, this.description, this.price){
  }


}

class ProductManager{

  
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
      print("Product not found");
      return Product('', null, 0.0); // Return a default product or handle as needed
    }
  }
  
  void deleteProduct(String name){
    if(Products.containsKey(name)){
      Products.remove(name);
    } else{
      print("Product not found");
    }
  }

  void updateProduct(String name, Product product) {
    if (Products.containsKey(name)) {
      Products[name] = product;
    } else {
    print("Product not found");
    }
  }
}