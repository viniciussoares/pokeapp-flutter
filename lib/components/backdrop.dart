import 'package:flutter/material.dart';

class Backdrop extends StatelessWidget {
  Backdrop({ Key key, this.child }): super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: child,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF81CCCD),
            Color(0xFFEAF6B4)
          ],
        ),
      ),
    );
  }
}
