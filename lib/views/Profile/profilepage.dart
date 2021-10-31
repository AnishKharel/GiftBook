import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
  const Profilepage(this.username);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[

          IconButton(
            onPressed: () => Navigator.push(
            context,
            new MaterialPageRoute(
            builder: (context) => HomeView())),
           icon:
          const Icon(Icons.logout) ),
          SizedBox(width: 50,),

        ],
        title: Text(username, style: TextStyle(color: Colors.black),
        
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
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      // Text("Priority Gifts"),
                                      SizedBox(
                                        height: 40,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Add Gift",
                                              labelText: "First Priority Gifts",
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
                        new ListTile(
                          title: new Center(
                              child: Text(
                            "More Information",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Friends List",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Steve Williams"),
                          subtitle: Text("Birth date: Oct 14 "),
                          onTap: () => Navigator.push(
                           context,
                            new MaterialPageRoute(
                          builder: (context) => Profilepage("Steve Willaims"))),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Anna Jones"),
                          subtitle: Text("Birth date: Mar 17 "),
                          onTap: () => Navigator.push(
                           context,
                            new MaterialPageRoute(
                          builder: (context) => Profilepage("Anna Johnes"))),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Alex Smith"),
                          subtitle: Text("Birth date: Feb 8 "),

                          trailing: Icon(Icons.arrow_drop_down),
                          onTap: () => Navigator.push(
                           context,
                            new MaterialPageRoute(
                          builder: (context) => Profilepage("Alex Smith"))),main
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
