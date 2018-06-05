import 'package:flutter/material.dart';

class Backdrop extends StatelessWidget {
  final Widget child;
  
  Backdrop({ Key key, this.child }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: child,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF76C9CF),
            Color(0xFFEAF6B4),
          ],
        ),
      ),
    );
  }
}
