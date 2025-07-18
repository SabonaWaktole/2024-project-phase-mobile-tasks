import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.stretch, // Ensures children stretch in width
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Stack(
                  fit: StackFit.expand, // Makes children fill the stack
                  children: [
                    Image.asset(
                      "assets/images/image.png",
                      fit: BoxFit.fill, // 👈 use cover to fill the width
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          20,
                          40,
                          10,
                          5,
                        ), // Optional padding for the icon
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromARGB(255, 42, 4, 131),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                child: Column(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
