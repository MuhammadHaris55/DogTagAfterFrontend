import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';
import 'package:flutter_app111/screens/login.dart';
import 'package:flutter_app111/screens/register.dart';
import 'package:flutter_app111/stylingWidgets/button.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Future<bool> _onBackPressed() {
    // return showDialog(context: context, builder: (BuildContext context) {});
    // return Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => Register()));
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('You are going to exit the application!!'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  return Navigator.of(context).pop(false);
                },
                child: Text(
                  'NO',
                ),
              ),
              TextButton(
                onPressed: () {
                  // return Navigator.of(context).pop(true);
                  return exit(0);
                },
                child: Text(
                  'YES',
                ),
              ),
            ],
          );
          // return Navigator.of(context).pop(true);
        });
    // return Navigator.of(context, MaterialPageRoute(builder: (context) => pop(true)));
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      body: WillPopScope(
        onWillPop: _onBackPressed,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'images/welcome-bg-image.png',
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screen.width,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 18),
                // height: MediaQuery.of(context).size.height / 2.2,
                child: Center(
                  child: Image(
                    image: AssetImage(
                      'images/Dog_Tag-02.png',
                    ),
                    width: MediaQuery.of(context).size.height / 4.1,
                  ),
                ),
              ),
              Container(
                // height: MediaQuery.of(context).size.height / 1.6,
                height: MediaQuery.of(context).size.width * 1.05,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(52),
                    topLeft: Radius.circular(52),
                  ),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 153.09,
                            width: 148.05,
                            // width: MediaQuery.of(context).size.width / 2.9,
                            // height: MediaQuery.of(context).size.height / 4.7,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/welcome-content-border.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.1,
                            padding: EdgeInsets.only(top: 30, left: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome!",
                                  style: TextStyle(
                                    color: themeColor,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 10,
                                    fontFamily: "Popins",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Lets get Started",
                                  style: TextStyle(
                                    fontFamily: "Popins",
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 19,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Dog tag is the warden patrolling over your pet anytime, anywhere.",
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: buttonDesign,
                      child: button_design(screen, "LOGIN"),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                    ),
                    SizedBox(height: 5),
                    Text(
                      "or",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    ElevatedButton(
                      style: buttonDesign,
                      child: button_design(screen, "SIGN UP"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                    ),
                    SizedBox(height: 25),
                    Text(
                      "terms and conditions / Privacy policy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
