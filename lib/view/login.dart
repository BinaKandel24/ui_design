import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_design/model/login_model.dart';
import 'package:ui_design/service/login_service.dart';
import 'package:ui_design/view/homepage.dart';
import 'package:ui_design/view/stacked_icons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isLoading = false;

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
      key: _scaffoldKey,
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
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
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
                              setState(() {
                                _isLoading = true;
                              });
                              await _login(_emailController.text,
                                  _passwordController.text);

                              if (loginResponseModel.token != null) {
                                //print(loginResponseModel.token);
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setString(
                                    'token', 'loginResponseModel.token');
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext ctx) =>
                                            HomePage()));
                              } else {
                                _scaffoldKey.currentState.showSnackBar(
                                  SnackBar(
                                    duration: Duration(milliseconds: 400),
                                    content: Text(loginResponseModel.error),
                                  ),
                                );
                              }

                              setState(() {
                                _isLoading = false;
                              });
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
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 18.0,
                          ),
                          child: Text(
                            'Create New Account',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF18D191),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
