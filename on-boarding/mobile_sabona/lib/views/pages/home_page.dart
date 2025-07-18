import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String user = "Yohannes";


  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('MMM d, yyyy').format(now);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Image.asset("assets/images/image.png"),
        ),

        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                formattedDate,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
              ),

              Text(
                'Hello , Yohannes',
                style: GoogleFonts.abyssinicaSil(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [Icon(Icons.notifications)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Available Products",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.search),
                ],
              ),
            ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("statement");
        },
        tooltip: 'Increment',
        backgroundColor: const Color.fromARGB(255, 86, 10, 226),
        foregroundColor: Colors.white,
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30),
        ),
        child: const Icon(Icons.add, size: 40),
      ),
    );
  }
}
