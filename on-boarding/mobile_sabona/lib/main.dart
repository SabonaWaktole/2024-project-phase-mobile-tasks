import 'package:flutter/material.dart';
import 'package:mobile_sabona/views/pages/home_page.dart';
import 'package:mobile_sabona/views/pages/add_update_page.dart';
import 'package:mobile_sabona/views/pages/detail_page.dart';
import 'package:mobile_sabona/views/pages/add_update_page.dart';
import 'package:mobile_sabona/views/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 2, 64, 187)),
      ),
      home: const MyHomePage(title: 'Hello'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 1;


  List<Widget> totalpages = [HomePage(), AddUpdatePage()];

  
  @override
  Widget build(BuildContext context) {
    return AddUpdatePage();
  }
}
