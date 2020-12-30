import 'package:SmartFarm/DashBoards/HomePage.dart';
import 'package:SmartFarm/authentication.dart';
import 'package:SmartFarm/TestHome.dart';
import 'package:SmartFarm/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'authentication.dart';

class SignUp extends StatefulWidget {
  static const Route = "/signup";

  static var routeName;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = new TextEditingController();

  Map<String, String> _authData = {'email': '', 'password': ''};

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      return;
      print("ok");
    }
    _formKey.currentState.save();

    await Provider.of<Authentication>(context, listen: false)
        .signup(_authData['email'], _authData['password']);
    print("ok");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 172, 142, 5.0),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                ),

                Container(
                  width: 350,
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          // Email____________________________________
                          TextFormField(
                            autofocus: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Email",
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                decorationColor: Colors.white),
                            keyboardType: TextInputType.emailAddress,

                            // validator of Email
                            validator: (String value) {
                              if (value.isEmpty || !value.contains("@")) {
                                return "Invalid Email !";
                              }
                              return null;
                            },

                            onSaved: (value) {
                              _authData['email'] = value;
                              print(_authData['email']);
                            },
                          ),

                          SizedBox(
                            height: 25,
                          ),

                          // Password_____________________________
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                decorationColor: Colors.white),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),

                            controller: _passwordController,

                            // validator of Password
                            validator: (value) {
                              if (value.length < 3 && value.isEmpty) {
                                return "Provide minimua 6 charactors";
                              }
                              return null;
                            },

                            onSaved: (value) {
                              _authData['password'] = value;
                              print(_authData['password']);
                            },
                          ),
                          SizedBox(
                            height: 25,
                          ),

// re Password_____________________________
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                decorationColor: Colors.white),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: " Re Password",
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),

                            // validator of Password
                            validator: (value) {
                              if (value.length < 5 ||
                                  value != _passwordController.text) {
                                return "Provide minimua 6 charactors";
                              }
                              return null;
                            },
                          ),
                        ],
                      )),
                ),

                // form

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                    ),

                    // Register Button
                    RaisedButton(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        onPressed: () {
                          _submit();

                          // Navigator.of(context)
                          //     .push(MaterialPageRoute(builder: (_) {
                          //   return Home();
                          // }));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 172, 142, 1.0)),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        color: Colors.white),
                  ],
                ),

                // google signin
                SignInButton(
                  Buttons.Google,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  text: "Sign up with Google",
                  onPressed: () {
                    signInWithGoogle().then((result) {
                      if (result != null) {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return TestHome();
                            // return HomePage();
                          }),
                        );
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
