import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';
import 'package:flutter_app111/screens/inbox.dart';
import 'package:flutter_app111/stylingWidgets/drawer.dart';
import 'package:flutter_app111/stylingWidgets/textField.dart';

class dogInfo extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MainDrawer(),
      body: Container(
        color: homeColor,
        child: Stack(
          children: [
            SizedBox(height: 50),
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: shadowColor,
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 40.0, bottom: 10.0),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'images/description-database-data.png',
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: screen.width / 1.1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Zoey, Female',
                                        style: TextStyle(
                                          color: themeColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: screen.width / 18,
                                        ),
                                      ),
                                      Spacer(),
                                      Image(
                                        image: AssetImage(
                                          'images/female-icon.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    width: screen.width / 1.3,
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore '
                                      'et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '
                                      'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum',
                                      style: TextStyle(
                                        fontSize: screen.width / 28,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screen.width / 1.1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              'Dog details',
                              style: TextStyle(
                                color: themeColor,
                                fontWeight: FontWeight.bold,
                                fontSize: screen.width / 18,
                              ),
                            ),
                            R_textFormField('Description'),
                            SizedBox(height: 10),
                            R_textFormField('Size'),
                            SizedBox(height: 20),
                            Text(
                              'Owner\'s Details',
                              style: TextStyle(
                                color: themeColor,
                                fontWeight: FontWeight.bold,
                                fontSize: screen.width / 15,
                              ),
                            ),
                            R_textFormField('First Name'),
                            SizedBox(height: 10),
                            R_textFormField('Last Name'),
                            SizedBox(height: 10),
                            R_textFormField('Email'),
                            SizedBox(height: 10),
                            R_textFormField('Phone Number'),
                            SizedBox(height: 20),
                            Center(
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Contact owner',
                                ),
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.symmetric(
                                      horizontal: 25.0,
                                      vertical: 10.0,
                                    ),
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(
                                        color: themeColor,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage(
                        'images/Dog_Tag-03.png',
                      ),
                      width: screen.width / 2,
                    ),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.chat_bubble_outline),
                            color: themeColor,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Inbox()));
                            }),
                        IconButton(
                          icon: Icon(Icons.menu),
                          color: themeColor,
                          onPressed: () {
                            _scaffoldKey.currentState.openEndDrawer();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
