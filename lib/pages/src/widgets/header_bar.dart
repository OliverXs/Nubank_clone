import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;
  const HeaderBar({Key key, this.showMenu, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).padding.top),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-3.png',
                      height: 35,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Matheus",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 22)),
                  ],
                ),
                Icon(!showMenu ? Icons.expand_more : Icons.expand_less)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
