import 'dart:async';
import 'package:hello_world/views/Profile/profilepage.dart';
import 'package:mysql1/mysql1.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/views/loadingpage.dart';
import 'package:hello_world/views/Profile/profilepage.dart';

class rightMainstate extends StatefulWidget {
  @override
  rightMain createState() => new rightMain();
}

class rightMain extends State<rightMainstate> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 350,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: .5),
        color: Colors.blue[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Sign In",
            style: TextStyle(fontSize: 45),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Username",
                )),
          ),
          SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Password",
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
                onPressed: () {
                   Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => loaderscreen(username:myController.text)));
                  Future.delayed(const Duration(milliseconds: 500), () {
                   setState(() { 
                      Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => Profilepage(myController.text)));

              });

                });

                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                )),
          ),
          Divider(thickness: 2, height: 20),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: ElevatedButton(
                style: TextButton.styleFrom(primary: Colors.amber[350]),
                onPressed: () {},
                child: Text(
                  "New User",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
