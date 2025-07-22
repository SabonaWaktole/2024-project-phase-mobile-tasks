import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mobile_sabona/datas/product.dart';
import 'package:mobile_sabona/datas/product_repository.dart';
import 'package:mobile_sabona/views/pages/add_update_page.dart';
import 'package:mobile_sabona/views/pages/search_page.dart';
import 'package:mobile_sabona/views/widgets/animated_navigator.dart';
import 'package:mobile_sabona/views/widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String user = "Yohannes";

  List<Product> products = ProductRepository.getAllProduct();

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('MMM d, yyyy').format(now);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
            // margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/images/profile.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(right: 1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                formattedDate,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
              ),

              Row(
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    user,
                    style: GoogleFonts.abyssinicaSil(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.notifications_none, size: 20),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 15),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Available Products",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(animatedPageRoute(SearchPage()));
                        },
                        child: Icon(Icons.search, size: 30),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              ListView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
  onPressed: () {
    Navigator.of(context).push(animatedPageRoute(AddUpdatePage()));
  },
  tooltip: 'Increment',
  backgroundColor: const Color.fromARGB(255, 63, 81, 243),
  foregroundColor: Colors.white,
  elevation: 30.0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
  child: const Icon(Icons.add, size: 50),
),
    );
  }
}
