import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_design/model/login_model.dart';
import 'package:ui_design/service/login_service.dart';
import 'package:ui_design/view/homepage.dart';
import 'package:ui_design/view/overlay_progress_bar.dart';
import 'package:ui_design/view/stacked_icons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginResponseModel loginResponseModel = new LoginResponseModel();

  _login(String email, String password) async {
    LoginService loginService = new LoginService();
    await loginService.getloginResponseModel(
        new LoginRequestModel(email: email, password: password));
    loginResponseModel = loginService.loginResponseModel;
    print('got');
  }

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
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
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
                    child: GestureDetector(
                      onTap: () async {
                        FocusScope.of(context).unfocus();

                        OverlayProgressBar().buildShowDialog(context);

                        await _login(
                            _emailController.text, _passwordController.text);

                        if (loginResponseModel.token != null) {
                          Fluttertoast.showToast(
                            msg: 'Login Successful',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Color(0xFF18D191),
                            textColor: Colors.white,
                            timeInSecForIosWeb: 1,
                          );

                          print(loginResponseModel.token);
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          prefs.setString('token', 'loginResponseModel.token');
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext ctx) => HomePage(),
                            ),
                          );
                        } else {
                          Fluttertoast.showToast(
                            msg: loginResponseModel.error,
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Color(0xFF18D191),
                            textColor: Colors.white,
                            timeInSecForIosWeb: 1,
                          );
                          Navigator.of(context).pop();
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF18D191),
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
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
                    child: GestureDetector(
                      onTap: () => print(_emailController.text),
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        child: Text(
                          'Forgot Password?',
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
        ),
      ),
    );
  }
}
