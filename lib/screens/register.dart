import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';
import 'package:flutter_app111/screens/registerDog_1.dart';
import 'package:flutter_app111/stylingWidgets/button.dart';
import 'package:flutter_app111/stylingWidgets/textField.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: screen.width / 1.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Container(
                  height: screen.height / 5,
                  width: screen.width / 1.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/Dog_Tag-03.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Owner\'s Details',
                        style: TextStyle(
                          color: themeColor,
                          fontWeight: FontWeight.bold,
                          fontSize: screen.width / 15,
                        ),
                      ),
                      SizedBox(height: 10),
                      R_textFormField('First Name'),
                      SizedBox(height: 10),
                      R_textFormField('Last Name'),
                      SizedBox(height: 10),
                      R_textFormField('Email'),
                      SizedBox(height: 10),
                      R_textFormField('Password'),
                      SizedBox(height: 10),
                      R_textFormField('Phone Number'),
                      SizedBox(height: 10),
                      R_textFormField('Address'),
                      SizedBox(height: 10),
                      R_textFormField('Zip Code'),
                      SizedBox(height: 30),
                      ElevatedButton(
                        style: buttonDesign,
                        child: button_design(screen, "Register"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => registerDog_1()));
                        },
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          "terms and conditions / Privacy policy",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
