import 'package:flutter/material.dart';
import 'cardBody.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  const PageViewApp({Key key, this.top, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top * 0.8,
        height: top * 1.8,
        left: 0,
        right: 0,
        child: PageView(
          onPageChanged: onChanged,
          children: <Widget>[CardBody(), CardBody(), CardBody()],
        ));
  }
}
