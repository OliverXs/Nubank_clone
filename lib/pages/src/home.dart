import 'package:flutter/material.dart';
import 'package:nubank/pages/src/widgets/pageView.dart';
import 'widgets/header_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showMenu;
  int currentIndex;
  Color getColor(index) {
    if (index == currentIndex) {
      return Colors.white;
    } else {
      return Colors.white38;
    }
  }

  @override
  void initState() {
    super.initState();
    showMenu = false;
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = 200;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(138, 5, 190, 0.7),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          HeaderBar(
            showMenu: showMenu,
            onTap: () {
              setState(() {
                showMenu = !showMenu;
              });
            },
          ),
          PageViewApp(
            top: screenHeight,
            onChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          Positioned(
            top: screenHeight * 2.7,
            child: Row(children: <Widget>[
              AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                      color: getColor(0), shape: BoxShape.circle)),
              SizedBox(
                width: 8,
              ),
              AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                      color: getColor(1), shape: BoxShape.circle)),
              SizedBox(
                width: 8,
              ),
              AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 7,
                  width: 7,
                  decoration:
                      BoxDecoration(color: getColor(2), shape: BoxShape.circle))
            ]),
          ),
        ],
      ),
    );
  }
}
