// product.dart

class Product {


    final String name;
    final String description;
    final double price;
    final String imagePath;
    final String category;
    final double rating;
    final int id;


    

Product({
    required this.name,
    required this.category,
    required this.price,
    required this.imagePath,
    required this.description,
    required this.rating,
    required this.id,
});
}
