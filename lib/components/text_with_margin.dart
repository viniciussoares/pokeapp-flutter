import 'package:flutter/material.dart';

class TextWithMargin extends StatelessWidget {
  TextWithMargin({ 
    Key key,
    this.text,
    this.fontSize,
    this.color,
    this.margin,
    this.textAlign = TextAlign.center,
  }): super(key: key);

  final String text;
  final double fontSize;
  final Color color;
  final EdgeInsetsGeometry margin;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: color, fontSize: fontSize),
      ),
      margin: margin,
    );
  }
}
