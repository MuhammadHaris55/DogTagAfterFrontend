import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        title: Center(child: Text("My Profile")),
        backgroundColor: appbarColor,
        actions: [
          IconButton(
              icon: Icon(Icons.edit), color: themeColor, onPressed: () {})
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image(
                image: AssetImage('images/My_profile.png'),
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(height: screen.width / 1.4),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: [
                              BoxShadow(
                                color: shadowColor,
                                blurRadius: 5.0,
                              ),
                            ]),
                        width: screen.width / 1.2,
                        height: screen.width / 3.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Spike',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screen.width / 18,
                                  ),
                                ),
                                Spacer(),
                                Image(
                                  image: AssetImage(
                                    'images/male-icon.png',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: screen.width / 1.3,
                              child: Text(
                                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod '
                                'tempor invidunt ut labore '
                                // 'et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '
                                // 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum'
                                ,
                                style: TextStyle(
                                  fontSize: screen.width / 32,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: screen.width / 1.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screen.width / 15.0)),
                            SizedBox(height: 10.0),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                              "orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris ninisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
