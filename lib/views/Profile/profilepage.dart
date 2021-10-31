import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    home: Profilepage("Anish Kharel"),
    theme: ThemeData(primaryColor: Colors.blue[100]),
  ));
}

class Profilepage extends StatelessWidget {
  final String username;
  const Profilepage(this.username);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page', style: TextStyle(color: Colors.black)),
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
                                    title: Text(username),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      // Text("Priority Gifts"),
                                      SizedBox(
                                        height: 40,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Add Gift",
                                              labelText: "Priority Gifts",
                                              icon: Icon(Icons.card_giftcard),
                                              border: OutlineInputBorder()),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: SizedBox(
                                          height: 40,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "Add Gift",
                                                labelText:
                                                    "Second Priority Gifts",
                                                border: OutlineInputBorder()),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: SizedBox(
                                          height: 40,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "Add Gift",
                                                labelText:
                                                    "Third Priority Gifts",
                                                border: OutlineInputBorder()),
                                          ),
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
                        ListTile(
                          title: Text("More Information"),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Friends List"),
                          // subtitle: Text("MosallasDev@gmail.com"),
                          // leading: Icon(Icons.email),
                        ),
                        ListTile(
                          title: Text("Add"),
                          // subtitle: Text(
                          //     "We hope you find this channel useful.\nMosallas, is a group of 4 people who can do your projects well.\nAnd they will teach you their skills in this channel."),
                          // leading: Icon(Icons.format_align_center),
                        ),
                        ListTile(
                          title: Text("Birth Date"),
                          // subtitle: Text("25 September 2020"),
                          leading: Icon(Icons.calendar_view_day),
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
