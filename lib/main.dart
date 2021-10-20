import 'package:flutter/material.dart';
import 'package:flutterdropdownsample/my_dropdown_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDropDownScreen(),
    );
  }
}