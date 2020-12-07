import 'package:flutter/material.dart';
import 'package:nubank/pages/src/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nubank Clone',
        theme: ThemeData(
            primarySwatch: Colors.purple, brightness: Brightness.dark),
        home: HomePage());
  }
}
