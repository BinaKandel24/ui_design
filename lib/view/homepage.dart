import 'package:flutter/material.dart';
import 'package:ui_design/view/main_content.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Color(
            0xFF18D191,
          ),
        ),
      ),
      body: MainContent(),
    );
  }
}
