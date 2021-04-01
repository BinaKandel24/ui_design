import 'package:flutter/material.dart';

class StackedIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        new Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFF18D191),
          ),
          child: Icon(Icons.local_offer, color: Colors.white),
        ),
        new Container(
          margin: EdgeInsets.only(
            right: 85.0,
            top: 60.0,
          ),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFFFC6A7F),
          ),
          child: Icon(Icons.home, color: Colors.white),
        ),
        new Container(
          height: 60.0,
          width: 60.0,
          margin: EdgeInsets.only(
            right: 50.0,
            top: 157.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFF28D560),
          ),
          child: Icon(Icons.search, color: Colors.white),
        ),
        new Container(
          margin: EdgeInsets.only(
            left: 50.0,
            top: 160.0,
          ),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFFFFCE56),
          ),
          child: Icon(
            Icons.local_car_wash,
            color: Colors.white,
          ),
        ),
        new Container(
          margin: EdgeInsets.only(
            left: 85.0,
            top: 60.0,
          ),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFF45E0EC),
          ),
          child: Icon(
            Icons.place,
            color: Colors.white,
          ),
        ),
        new Container(
          margin: EdgeInsets.only(
            top: 85.0,
          ),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.pink[300],
          ),
          child: Icon(
            Icons.miscellaneous_services,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
