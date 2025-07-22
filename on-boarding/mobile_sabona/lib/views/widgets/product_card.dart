import 'package:flutter/material.dart';
// import 'package:mobile_sabona/datas/product_repository.dart';
import 'package:mobile_sabona/datas/product.dart';
// import 'package:mobile_sabona/views/pages/add_update_page.dart';
import 'package:mobile_sabona/views/pages/detail_page.dart';
import 'package:mobile_sabona/views/widgets/animated_navigator.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 8.0),
      child: GestureDetector(
        onTap: () {
  Navigator.of(context).push(
    animatedPageRoute(
      DetailPage(productId: product.id),
    ),
  );
}
,
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(16),
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: SizedBox(
                    height: 200,
                    width: 300,
                    child: Image.asset(product.imagePath, fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(product.category),
                        ],
                      ),
                      Column(
                        children: [
                          Text("\$${product.price}"),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              Text("(${product.rating})"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
