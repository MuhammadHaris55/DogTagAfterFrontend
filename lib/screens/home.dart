import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';
import 'package:flutter_app111/screens/dogInfo.dart';
import 'package:flutter_app111/screens/inbox.dart';
import 'package:flutter_app111/screens/registerDog_1.dart';
import 'package:flutter_app111/stylingWidgets/drawer.dart';

Row drawerIconRow(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      Icon(
        Icons.arrow_forward,
        color: Colors.black,
      ),
    ],
  );
}

Row drawerRow(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Container dataContainer(screen) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5.0),
    width: screen.width / 3,
    height: screen.width / 2.2,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 5.0,
          ),
        ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: screen.width / 3,
          height: screen.width / 4,
          child: Image(
            image: AssetImage(
              'images/home-database-data.png',
            ),
          ),
        ),
        Text(
          'Zoey, Female',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 5.0),
          child: Text(
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod'
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ),
      ],
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: homeColor,
      endDrawer: MainDrawer(),
      body: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 110),
                  width: screen.width / 1.1,
                  color: homeColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'My report',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: screen.width / 18,
                        ),
                      ),
                      SizedBox(height: 15),
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
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 30.0),
                        child: Column(
                          children: [
                            Text(
                              'Add your lost dog report',
                              style: TextStyle(
                                color: themeColor,
                                fontSize: screen.width / 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => registerDog_1()));
                              },
                              child: Text(
                                'ADD YOUR DOG ->',
                              ),
                              style: ButtonStyle(
                                // padding: MaterialStateProperty.all<EdgeInsets>(
                                //     EdgeInsets.all(20.0)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: themeColor,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      RichText(
                        text: TextSpan(
                          text: 'Lost Dogs',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: screen.width / 18,
                          ),
                          children: [
                            TextSpan(
                              text: ' Near Me',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          color: homeColor,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => dogInfo()));
                                },
                                child: dataContainer(screen),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => dogInfo()));
                                },
                                child: dataContainer(screen),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => dogInfo()));
                                },
                                child: dataContainer(screen),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => dogInfo()));
                                },
                                child: dataContainer(screen),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => dogInfo()));
                                },
                                child: dataContainer(screen),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => dogInfo()));
                                },
                                child: dataContainer(screen),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => dogInfo()));
                                },
                                child: dataContainer(screen),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => dogInfo()));
                                },
                                child: dataContainer(screen),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => dogInfo()));
                                },
                                child: dataContainer(screen),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
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
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seen a dog that looks lost?',
                              style: TextStyle(
                                color: themeColor,
                                fontSize: screen.width / 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: screen.width / 1.8,
                              child: Text(
                                'Report it and help get them home',
                                style: TextStyle(
                                  fontSize: screen.width / 24.0,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              registerDog_1()));
                                },
                                child: Text(
                                  'ADD REPORT     ->',
                                ),
                                style: ButtonStyle(
                                  // padding: MaterialStateProperty.all<EdgeInsets>(
                                  //     EdgeInsets.all(20.0)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: BorderSide(
                                        color: themeColor,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),
            ),
            Container(
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
                ],
              ),
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Inbox()));
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: themeColor,
                        onPressed: () =>
                            _scaffoldKey.currentState.openEndDrawer(),
                      ),
                    ],
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
