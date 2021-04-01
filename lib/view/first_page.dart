import 'package:flutter/material.dart';
import 'package:ui_design/view/login.dart';
import 'package:ui_design/view/sign_up.dart';
import 'package:ui_design/view/stacked_icons.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StackedIcons(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 80.0),
                child: Text(
                  'Service Ware',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 10.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Container(
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF18D191),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Sign In With Email',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        )),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 5.0,
                    top: 10.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF4364A1),
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    child: Text(
                      'Facebook',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 20.0,
                    left: 5.0,
                    top: 10.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFDF513B),
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    child: Text(
                      'Google',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 60.0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      child: Text(
                        'Create New Account',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF18D191),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
