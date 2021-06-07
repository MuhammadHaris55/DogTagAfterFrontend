import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';
import 'package:flutter_app111/screens/register.dart';
import 'package:flutter_app111/stylingWidgets/button.dart';
import 'package:flutter_app111/stylingWidgets/textField.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image(
              image: AssetImage(
                'images/login-top-paw.png',
              ),
              width: MediaQuery.of(context).size.height / 4.1,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image(
              image: AssetImage(
                'images/login-bottom-paw.png',
              ),
              width: MediaQuery.of(context).size.height / 6.0,
            ),
          ),
          Align(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.0,
                    child: Image(
                      image: AssetImage(
                        'images/Dog_Tag-02.png',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            color: themeColor,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 10,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Username",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: screen.width / 1.1,
                          decoration: textFeildBoxDeco(),
                          child:
                              textFieldDesign("Enter Your Name", Icons.person),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Password",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: screen.width / 1.1,
                          decoration: textFeildBoxDeco(),
                          child: textFieldDesign("your Password", Icons.lock),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.mail_outline,
                              color: Colors.red,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          style: buttonDesign,
                          child: button_design(screen, "Sign in"),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                "Don't have an account",
                              ),
                              TextButton(
                                onPressed: () {
                                  // Navigator.of(context).pushNamed('/register');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Register()));
                                },
                                child: Text(
                                  "Create Account",
                                ),
                              ),
                              Text(
                                "terms and conditions / Privacy policy",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
