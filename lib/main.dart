import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_design/view/first_page.dart';
import 'package:ui_design/view/homepage.dart';

var token;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  token = prefs.getString('token');
  print(token);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Service Ware',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: token == null ? FirstPage() : HomePage(),
    );
  }
}
