import 'package:flutter/material.dart';
import 'package:ui_design/view/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quick Bee',
      theme: ThemeData(
        fontFamily: 'Roberto',
      ),
      home: FirstPage(),
    );
  }
}
