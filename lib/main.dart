import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';
import 'package:flutter_app111/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Welcome())),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: [
            Colors.white,
            themeColor,
          ],
        )),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/Dog_Tag-01.png',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
