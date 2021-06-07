import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';
import 'package:flutter_app111/screens/greatJob.dart';
import 'package:flutter_app111/stylingWidgets/button.dart';

// ignore: camel_case_types
class dogConfirmation extends StatefulWidget {
  final String dogName;
  final String dogGender;
  final String dogBreed;
  final String dogColor;
  final String dogDescription;
  final String dogSize;
  final File dogImage;

  dogConfirmation({
    this.dogName,
    this.dogGender,
    this.dogBreed,
    this.dogColor,
    this.dogDescription,
    this.dogSize,
    this.dogImage,
  });

  @override
  _dogConfirmationState createState() => _dogConfirmationState();
}

class _dogConfirmationState extends State<dogConfirmation> {
  @override
  Widget build(BuildContext context) {
    String dogName = widget.dogName;
    String dogGender = widget.dogGender;
    String dogBreed = widget.dogBreed;
    String dogColor = widget.dogColor;
    String dogDescription = widget.dogDescription;
    String dogSize = widget.dogSize;

    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        title: Center(
          child: Container(
            padding: EdgeInsets.only(right: screen.width / 8),
            child: Text(
              'Confirmation',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: shadowColor,
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      widget.dogImage != null
                          ? Image.file(
                              widget.dogImage,
                            )
                          : Image(
                              image: AssetImage(
                                // 'images/confirmationPic.png',
                                widget.dogImage == null
                                    ? 'images/confirmationPic.png'
                                    : widget.dogImage,
                              ),
                              height: screen.width / 1.7,
                            ),
                      Positioned(
                        bottom: 20.0,
                        left: 20.0,
                        child: Text(
                          // 'I\'m Spike',
                          dogName == null ? 'no name' : dogName,
                          style: TextStyle(
                            backgroundColor: themeColor,
                            fontWeight: FontWeight.bold,
                            fontSize: screen.width / 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: screen.width / 1.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // R_textFormField('My dog\'s breed is...'),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                      labelText: 'My dog\'s breed is...',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    initialValue: dogBreed,
                    onChanged: (val) => dogBreed = val,
                  ),
                  SizedBox(height: 10.0),
                  // R_textFormField('Description'),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                      labelText: 'Description',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    initialValue: dogDescription,
                    onChanged: (val) => dogDescription = val,
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    'Dog details',
                    style: TextStyle(
                      color: themeColor,
                      fontWeight: FontWeight.bold,
                      fontSize: screen.width / 18,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // R_textFormField('Size'),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                      labelText: 'Size',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    initialValue: dogSize == null ? 'undefine' : dogSize,
                    onChanged: (val) => dogSize = val,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Gender',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    dogGender == null ? 'undefine' : dogGender,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Your profile is almost complete',
                    style: TextStyle(
                      color: themeColor,
                      fontWeight: FontWeight.bold,
                      fontSize: screen.width / 15,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    style: buttonDesign,
                    child: button_design(screen, "Register"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GreatJob()));
                    },
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
