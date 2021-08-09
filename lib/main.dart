import 'package:flutter/material.dart';
import 'cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Cart(),
    );
  }
}
