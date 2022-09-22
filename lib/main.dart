import 'package:flutter/material.dart';
import 'package:prefdemo/pages/home_page.dart';
import 'package:prefdemo/pages/home_page2.dart';
import 'package:prefdemo/pages/task1.dart';
import 'package:prefdemo/pages/task2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Task2(),
    );
  }
}