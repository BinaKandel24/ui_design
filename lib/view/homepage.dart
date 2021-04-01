import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_design/view/main_content.dart';
import 'package:ui_design/view/main_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Color(0xFF18D191),
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.green,
          ),
        ),
        drawer: MainDrawer(),
        body: WillPopScope(
          onWillPop: () {
            return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      'Are you sure?',
                    ),
                    content: Text('It will close the application.'),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () {
                          SystemNavigator.pop();
                        },
                        child: Text('Yes'),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('No'),
                      ),
                    ],
                  );
                });
          },
          child: MainContent(),
        ));
  }
}
