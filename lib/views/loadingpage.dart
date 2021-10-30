import 'package:flutter/material.dart';
import 'package:hello_world/Widgets/Centered%20View/centeredView.dart';

class loaderscreen extends StatelessWidget {
  final String? username;
  const loaderscreen({this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: centeredView(
        child: Column(
          children: <Widget>[
             Padding(
                padding: EdgeInsets.symmetric(horizontal: 350, vertical: 250),
                child: Text("welcome.."+username!, style: const TextStyle(fontSize: 40),
                ))
          ],
        ),
      ),
    );
  }
}
