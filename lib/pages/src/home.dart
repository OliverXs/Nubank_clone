import 'package:flutter/material.dart';
import 'widgets/header_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[700],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          HeaderBar(),
        ],
      ),
    );
  }
}
