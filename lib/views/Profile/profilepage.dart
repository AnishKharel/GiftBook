import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:hello_world/views/Profile/userinfo.dart';

import 'package:hello_world/Widgets/Centered%20View/centeredView.dart';
import 'package:mysql1/mysql1.dart';

import 'package:hello_world/views/home/HomeView.dart';

void main() {
  runApp(MaterialApp(
    home: Profilepage("Anish Kharel"),
    theme: ThemeData(primaryColor: Colors.blue[100]),
  ));
}

class Profilepage extends StatelessWidget {
  final String username;
  final userinfo user = new userinfo();
  Profilepage(this.username);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () => Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => HomeView())),
              icon: const Icon(Icons.logout)),
          SizedBox(
            width: 50,
          ),
        ],
        title: Text(
          username,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  "assets/profilepic.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 200, 15, 15),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 95),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text(username,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.card_giftcard,
                                  size: 40,
                                ),
                                Text("Preferred Gifts",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      // Text("Priority Gifts"),

                                      Container(
                                        height: 40,
                                        child: Text(
                                          user.getgift(),
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      // Text("Priority Gifts"),

                                      Container(
                                        height: 40,
                                        child: Text(
                                          user.getgift(),
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      // Text("Priority Gifts"),

                                      Container(
                                        height: 40,
                                        child: Text(
                                          user.getgift(),
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.15),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/profile.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: <Widget>[
                        new ListTile(
                          title: new Center(
                              child: Text(
                            "More Information",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                        ),
                        Divider(),
                        Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            Text("Friends List",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            SizedBox(
                              width: 400,
                            ),
                            Text("Holidays",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ],
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Steve Williams"),
                          subtitle: Text("Birth date: Oct 14 "),
                          onTap: () => Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) =>
                                      Profilepage("Steve Willaims"))),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Anna Jones"),
                          subtitle: Text("Birth date: Mar 17 "),
                          onTap: () => Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) =>
                                      Profilepage("Anna Johnes"))),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Alex Smith"),
                          subtitle: Text("Birth date: Feb 8 "),
                          onTap: () => Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) =>
                                      Profilepage("Alex Smith"))),
                        ),
                        ListTile(
                          leading: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
