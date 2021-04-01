import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String firstName = '';
  String lastName = '';
  int age = 0;
  String password = '';
  String maritalStatus = 'single';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Color(0xFF18D191),
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.green,
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Container(
          width: double.infinity,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create Account',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'First Name',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter first name';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          firstName = value;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter first name';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          lastName = value;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter email';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter password';
                        }
                        if (value.length < 8) {
                          return 'Password should contain 8 or more characters';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Age',
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter age';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        setState(() {
                          age = int.tryParse(value);
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: RadioListTile<String>(
                          title: const Text('Single'),
                          value: 'Single',
                          groupValue: maritalStatus,
                          onChanged: (value) {
                            setState(() {
                              maritalStatus = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<String>(
                          title: const Text('Married'),
                          value: 'Married',
                          groupValue: maritalStatus,
                          onChanged: (value) {
                            setState(() {
                              maritalStatus = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                        child: Text('SignUp'),
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            Fluttertoast.showToast(
                              msg: 'Account Created',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Color(0xFF18D191),
                              textColor: Colors.white,
                              timeInSecForIosWeb: 1,
                            );
                          } else {
                            Fluttertoast.showToast(
                              msg: 'Invalid',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Color(0xFF18D191),
                              textColor: Colors.white,
                              timeInSecForIosWeb: 1,
                            );
                          }
                        }),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
