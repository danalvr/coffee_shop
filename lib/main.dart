import 'package:flutter/material.dart';
import 'package:coffee_shop/view/pages/main_screen.dart';
import 'package:coffee_shop/view/pages/detail_coffee_screen.dart';
// import 'main_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MainScreen(),
    );
  }
}