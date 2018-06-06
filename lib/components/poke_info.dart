import 'package:flutter/material.dart';
import 'text_with_margin.dart';
import 'poke_divider.dart';

class PokeInfo extends StatelessWidget {
  PokeInfo({ Key key, this.title, this.body }): super(key: key);

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PokeDivider(
          margin: EdgeInsets.only(bottom: 24.0)
        ),
        TextWithMargin(
          text: title, 
          color: Color(0xFF146a8a), 
          fontSize: 12.0, 
          margin: EdgeInsets.only(bottom: 12.0)
        ),
        TextWithMargin(
          text: body, 
          color: Color(0xFF919191), 
          fontSize: 14.0, 
          margin: EdgeInsets.only(bottom: 24.0)
        ),
      ]
    );
  }
}
