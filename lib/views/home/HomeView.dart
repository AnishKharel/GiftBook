import 'package:flutter/material.dart';
import 'package:hello_world/Widgets/Centered%20View/centeredView.dart';
import 'package:hello_world/Widgets/Title%20Bar/Titlebar.dart';
import 'package:hello_world/Widgets/leftMain.dart';
import 'package:hello_world/Widgets/rightMain.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: centeredView(
        child: Column(
          children: <Widget> [
        Titlebar(),
        Expanded(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          leftMain(),
          rightMainstate(),
          
        ],)
          ,
        )
      ],),
      ),
    );
  }
}
