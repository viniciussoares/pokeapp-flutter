import 'package:flutter/material.dart';

const _defaultColors = [Color(0xFF89D0CC), Color(0xFFEAF6B4)];

class Backdrop extends StatelessWidget {
  final Widget child;
  final double elevation;
  final List<Color> colors;
  
  Backdrop({ 
    Key key,
    this.child,
    this.elevation = 0.0, 
    this.colors = _defaultColors
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: Container(
        child: child,
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colors,
          ),
        ),
      ),
      elevation: elevation,
    );
  }
}
