import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_design/view/login.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Abhilasha Sedain"),
            accountEmail: Text("abbilasha24@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              radius: 60.0,
              backgroundColor: Color(0xFF18D191),
              backgroundImage: NetworkImage(
                'https://conferenceoeh.com/wp-content/uploads/profile-dummy-girl.jpg',
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Contact Us"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.remove('token');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext ctx) => LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
