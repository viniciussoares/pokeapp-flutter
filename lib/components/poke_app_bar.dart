import 'package:flutter/material.dart';

import 'backdrop.dart';

class PokeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  
  final double height = 56.0;

  PokeAppBar({ Key key, this.text }): super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(150.0);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return Material(
      child: Container(
        color: Color(0xFF81CCCD),
        padding: new EdgeInsets.only(top: statusbarHeight),
        height: statusbarHeight + height,
        child: new Center(
          child: new Text(
            text,
            style: new TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      elevation: 2.0,
    );
  }
}
