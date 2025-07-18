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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset("assets/images/image.png", fit: BoxFit.fill),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 40, 10, 5),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color.fromARGB(255,63,81,243),
                          ),
                        ),
                      ),





                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Men's shoe", style: GoogleFonts.abel()),

                        Text(
                          "Leather shoes",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            Text("(4.0)", style: GoogleFonts.abel()),
                          ],
                        ),
                        Text("\$120"),
                      ],
                    ),
                  ],
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Size:"),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      //TODO change the following container to elevated buttons
                      children: [
                        SizedBox(width: 12),

                        ElevatedButton(
                          onPressed: () {
                            debugPrint('button');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255,228,226,231),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "42",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        SizedBox(width: 12),

                        ElevatedButton(
                          onPressed: () {
                            debugPrint('button');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255,228,226,231),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "42",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        SizedBox(width: 12),

                        ElevatedButton(
                          onPressed: () {
                            debugPrint('button');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255,63,81,243),

                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "42",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),

                        SizedBox(width: 12),

                        ElevatedButton(
                          onPressed: () {
                            debugPrint('button');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255,228,226,231),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "42",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        SizedBox(width: 12),

                        ElevatedButton(
                          onPressed: () {
                            debugPrint('button');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255,228,226,231),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "42",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        SizedBox(width: 12),

                        ElevatedButton(
                          onPressed: () {
                            debugPrint('button');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255,228,226,231),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "42",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  """Leather shoes are footwear made primarily from animal hide (leather), offering durability, breathability, and a classic aesthetic. They are a popular choice for both casual and formal wear due to their versatility and the unique properties of leather.Leather Shoes vs Man-made Leather Shoes | ShoeTree Project Here's a more detailed look: Key Characteristics of Leather Shoes:Material:Leather shoes are crafted from tanned animal hides, commonly cowhide, but also including exotic options like alligator, ostrich, and suede.Durability:High-quality leather is naturally resistant to wear and tear, and can become even more supple and attractive with age.Breathability:Leather's porous structure allows for air circulation, which helps to keep feet comfortable and reduces odor.Flexibility: conforms to the shape of the foot, providing superior comfort and a customized fit.""",
                  style: GoogleFonts.roboto(),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        side: BorderSide(color: Colors.red, width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        foregroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 10,
                        ),
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
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text("UPDATE"),
                    ),
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
