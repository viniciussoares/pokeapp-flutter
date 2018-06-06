import 'package:flutter/material.dart';

class PokeDivider extends StatelessWidget {
  PokeDivider({ Key key, this.margin }): super(key: key);

  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF).withAlpha(75),
      height: 2.0,
      margin: margin,
    );
  }
}
