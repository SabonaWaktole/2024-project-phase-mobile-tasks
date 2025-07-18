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
              SizedBox(width: 20),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    
                    suffixIcon: Icon(
                      Icons.arrow_forward,
                      color: Color.fromARGB(255, 63, 81, 243),
                      size: 28,
                    ),
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "Leather",
                  ),
                ),
              ),
              SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 63, 81, 243),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(50, 45),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Icon(Icons.filter_list, size: 25),
              ),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 20,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 10.0, 10.0, 8.0),
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
                                child: Image.asset(
                                  'assets/images/image.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Leather shoes",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text("Men's shoe"),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("\$120"),
                                      Row(
                                        children: [
                                          Icon(Icons.star, color: Colors.amber),
                                          Text("(4.0)"),
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

                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 10.0, 10.0, 8.0),
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
                                child: Image.asset(
                                  'assets/images/image.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Leather shoes",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text("Men's shoe"),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("\$120"),
                                      Row(
                                        children: [
                                          Icon(Icons.star, color: Colors.amber),
                                          Text("(4.0)"),
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
                      fillColor: const Color.fromARGB(255, 255, 255, 255),

                      filled: true,

                      // enabledBorder: OutlineInputBorder(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),

                Text("price"),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Color.fromARGB(255, 63, 81, 243),
                    inactiveTrackColor: Colors.grey[300],
                    trackHeight: 6.0,
                    thumbColor: Colors.white,
                    overlayColor: Color.fromARGB(255, 63, 81, 243),
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 4.0,
                    ),
                    overlayShape: const RoundSliderOverlayShape(
                      overlayRadius: 20.0,
                    ),
                    rangeThumbShape: const RoundRangeSliderThumbShape(
                      enabledThumbRadius: 5,
                    ),
                    rangeTrackShape: const RoundedRectRangeSliderTrackShape(),
                  ),
                  child: RangeSlider(
                    values: RangeValues(20, 80),
                    min: 0,
                    max: 100,
                    divisions: 100,
                    labels: RangeLabels("20", "80"),
                    onChanged: (RangeValues values) {
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 63, 81, 243),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 160,
                      vertical: 12,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text("APPLY"),
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
