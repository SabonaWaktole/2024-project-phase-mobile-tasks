import 'package:flutter/material.dart';
import 'package:mobile_sabona/views/widgets/detail_card.dart';
import 'package:mobile_sabona/datas/product.dart';
import 'package:mobile_sabona/datas/product_repository.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  Product product = ProductRepository.getProductById(1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: DetailCard(product: product),
      ),
      bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    debugPrint("${product.id}, ${product.description}");
                  },
                  style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.red, width: 1.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    foregroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  child: Text("DELETE"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 63, 81, 243),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text("UPDATE"),
                ),
              ],
            ),
          ),
    );
  }
}
