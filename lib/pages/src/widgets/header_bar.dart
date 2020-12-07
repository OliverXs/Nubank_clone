import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).padding.top),
        Container(
          color: Colors.red,
          height: 200,
          child: Row(
            children: <Widget>[
              Image.network(''),
              SizedBox(
                width: 10,
              ),
              Text("Matheus",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
            ],
          ),
        ),
      ],
    );
  }
}
