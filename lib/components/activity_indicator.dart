import 'package:flutter/material.dart';

class ActivityIndicator extends StatelessWidget {
  ActivityIndicator({ Key key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        height: 56.0,
        width: 56.0,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
