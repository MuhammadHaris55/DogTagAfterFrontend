import 'package:flutter/material.dart';
import 'package:flutter_app111/screens/appColors.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 150,
              padding:
                  EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: themeColor,
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor,
                      blurRadius: 5.0,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(
                          image: AssetImage(
                            'images/drawer-profile-pic.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                        radius: 38,
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Message',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(top: 110.0),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image(
                              image: AssetImage(
                                'images/chat-profile-pic.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                            radius: 25,
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mike',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'I found your dog',
                                style: TextStyle(),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Now'),
                              Text(' '),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 70.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image(
                              image: AssetImage(
                                'images/chat-profile-pic.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                            radius: 25,
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mike',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'I found your dog',
                                style: TextStyle(),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Now'),
                              Text(' '),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 70.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image(
                              image: AssetImage(
                                'images/chat-profile-pic.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                            radius: 25,
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mike',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'I found your dog',
                                style: TextStyle(),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Now'),
                              Text(' '),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 70.0,
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
