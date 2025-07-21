import 'product.dart';

class ProductStorage {
  static final List<Product> product = [
    Product(
      name: "White Sneaker",
      category: "men's shoes", 
      description: "white sneakers is good", 
      price: 12, 
      imagePath: "assets/images/shoes/whitesneaker.png",
      rating: 4.0,
      id: 0,
    ),


    Product(
      name: "White sketchers shoes",
      category: "men's shoes", 
      description: "Leather shoes are footwear made primarily from animal hide (leather), offering durability, breathability, and a classic aesthetic. They are a popular choice for both casual and formal wear due to their versatility and the unique properties of leather.Leather Shoes vs Man-made Leather Shoes | ShoeTree Project Here's a more detailed look: Key Characteristics of Leather Shoes:Material:Leather shoes are crafted from tanned animal hides, commonly cowhide, but also including exotic options like alligator, ostrich, and suede.Durability:High-quality leather is naturally resistant to wear and tear, and can become even more supple and attractive with age.Breathability:Leather's porous structure allows for air circulation, which helps to keep feet comfortable and reduces odor.Flexibility: conforms to the shape of the foot, providing superior comfort and a customized fit."
      , 

      price: 12, 
      imagePath: "assets/images/shoes/whitesketchers.png",
      rating: 4.0,
      id: 1,
    ),
    Product(
      name: "Black Sketchers shoes",
      category: "men's shoes", 
      description: "sedan", 
      price: 12, 
      imagePath: "assets/images/shoes/blacksketchers.png",
      rating: 4.0,
      id: 2
    ),
    Product(
      name: "Parijan", 
      category: "men's pants", 
      price: 120, 
      imagePath: "assets/images/trousers/yellowparijan.png", 
      description: "description", 
      rating: 4.0, 
      id: 5
      ),

    Product(
      name: "name", 
      category: "category", 
      price: 10, 
      imagePath: "assets/images/trousers/versacehomo.png", 
      description: "description", 
      rating: 4.0, 
      id: 4),
    Product(
      name: "Black leather shoes",
      category: "men's shoes", 
      description: "suv", 
      price: 12, 
      imagePath: "assets/images/shoes/bleathershoes.png",
      rating: 4.0,
      id: 3
    )
  ];
}