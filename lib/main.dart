import 'package:flutter/material.dart';
import 'package:hello_world/views/home/HomeView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GiftBook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView()
    );
  }
}

