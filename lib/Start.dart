import 'package:SmartFarm/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  static const Route = "/login";

  static var routeName;

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  // final FirebaseAuth auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String email, password;

  void _submit() {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 172, 142, 5.0),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                ),
                Container(
                  child: Image(
                    image: AssetImage("images/logo.png"),
                    height: 200,
                    width: 240,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: EdgeInsets.all(20),

                  // form
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

                            onSaved: (value) {},

                            onChanged: (value) {
                              print(value);
                              email = value;
                            },
                          ),

                          SizedBox(
                            height: 20,
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

                            // validator of Password
                            validator: (value) {
                              if (value.length <= 3 && value.isEmpty) {
                                return "Provide minimua 6 charactors";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              print(value);
                              password = value;
                            },
                          ),
                        ],
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                    ),

                    // Login Button______________________________
                    RaisedButton(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        onPressed: () {
                          _submit();
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 172, 142, 1.0)),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        color: Colors.white),

                    SizedBox(
                      width: 20,
                    ),

                    // Register Button
                    RaisedButton(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return SignUp();
                          }));
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
