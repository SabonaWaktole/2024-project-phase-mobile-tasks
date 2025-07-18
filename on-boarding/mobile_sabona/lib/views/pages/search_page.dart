import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: const Color.fromARGB(255, 16, 30, 224),
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(80, 10, 10, 10),
          child: Text("Search Product"),
        ),
      ),

      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 30),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.arrow_forward,
                        color: Colors.blueAccent,
                      ),
                      fillColor: Color.fromARGB(255, 231, 231, 231),
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "Leather",
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 10, 6, 231),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Icon(Icons.filter_list, size: 40),
              ),

              SizedBox(width: 30),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.fromLTRB(16.0, 10.0, 10.0, 8.0),
            
                    //TODO retrive this child from widgetbuilder
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 227, 227, 228),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            child: SizedBox(
                              height: 200,
                              width: 300,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.cover,
                              ),
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
                                      "Leather shoes",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text("Men's shoe", style: GoogleFonts.abel()),
                                  ],
                                ),
            
                                Column(
                                  children: [
                                    Text("\$120"),
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.amber),
                                        Text("(4.0)", style: GoogleFonts.abel()),
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
                  Padding(
                    padding: EdgeInsetsGeometry.fromLTRB(16.0, 10.0, 10.0, 8.0),
            
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 227, 227, 228),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            child: SizedBox(
                              height: 200,
                              width: 300,
                              child: Image.asset(
                                'assets/images/image.png',
                                fit: BoxFit.cover,
                              ),
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
                                      "Leather shoes",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text("Men's shoe", style: GoogleFonts.abel()),
                                  ],
                                ),
            
                                Column(
                                  children: [
                                    Text("\$120"),
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.amber),
                                        Text("(4.0)", style: GoogleFonts.abel()),
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
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("category"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 231, 231, 231),

                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                Text("price"),
                RangeSlider(
                  
                  activeColor: Colors.blueAccent,
                  values: RangeValues(20, 80),
                  min: 0,
                  max: 100,
                  divisions: 10,
                  labels: RangeLabels(
                    RangeValues(20, 80).start.round().toString(),
                    RangeValues(20, 80).end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {});
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 10, 6, 231),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 160,
                      vertical: 12,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text("apply"),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}