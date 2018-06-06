import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String url;
  final double size;
  final EdgeInsetsGeometry margin;
  
  Avatar({ 
    Key key,
    this.url,
    this.size,
    this.margin,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        url,
        fit: BoxFit.contain,
      ),
      decoration: new BoxDecoration(
        border: new Border.all(color: Color(0xFFE3E3E3), width: 2.0),
        color: Colors.white,
        shape: BoxShape.circle
      ),
      height: size,
      padding: EdgeInsets.all(size * 0.2),
      margin: margin,
      width: size,
    );
  }
}
