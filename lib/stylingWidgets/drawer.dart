import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';
import 'package:flutter_app111/screens/contactUs.dart';
import 'package:flutter_app111/screens/home.dart';
import 'package:flutter_app111/screens/inbox.dart';
import 'package:flutter_app111/screens/login.dart';
import 'package:flutter_app111/screens/myProfile.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        padding: EdgeInsets.only(top: 30, left: 15),
        color: themeColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screen.width / 1.3,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image(
                      image: AssetImage(
                        'images/drawer-profile-pic.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                    radius: 25,
                  ),
                  SizedBox(width: 10),
                  Wrap(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Spike',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            'Lorem ipsum',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    iconSize: 50,
                    icon: Icon(
                      Icons.cancel_sharp,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: screen.width / 1.8,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: drawerIconRow('Home'),
              ),
            ),
            Container(
              width: screen.width / 1.8,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Inbox()));
                },
                child: drawerIconRow('Inbox'),
              ),
            ),
            Container(
              width: screen.width / 1.8,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyProfile()));
                },
                child: drawerIconRow('My profile'),
              ),
            ),
            Divider(
              thickness: 2.0,
              color: Colors.black,
              endIndent: screen.width / 8,
            ),
            Container(
              width: screen.width / 1.8,
              child: TextButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ImageUploading()));
                },
                child: drawerRow('The Dog Tag Mission'),
              ),
            ),
            Container(
              width: screen.width / 1.8,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUs()));
                },
                child: drawerRow('Contact us'),
              ),
            ),
            Container(
              width: screen.width / 1.8,
              child: TextButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Home()));
                },
                child: drawerRow('Privacy policy'),
              ),
            ),
            Container(
              width: screen.width / 1.8,
              child: TextButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Home()));
                },
                child: drawerRow('Term and conditions'),
              ),
            ),
            Divider(
              thickness: 2.0,
              color: Colors.black,
              endIndent: screen.width / 8,
            ),
            Container(
              width: screen.width / 1.8,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: drawerRow('Log out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
