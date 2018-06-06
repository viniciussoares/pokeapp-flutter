import 'package:flutter/material.dart';

import '../components/avatar.dart';
import '../components/backdrop.dart';
import '../components/text_with_margin.dart';
import '../model/pokemon.dart';

class PokemonDetail extends StatefulWidget {
  final Pokemon pokemon;

  const PokemonDetail(this.pokemon);

  @override
  _PokemonDetail createState() => _PokemonDetail();
}

class _PokemonDetail extends State<PokemonDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF81CCCD),
        title: Text('PokeApp'),
      ),
      body: Backdrop(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 42.0),
          children: <Widget>[
            Avatar(
              url: widget.pokemon.image,
              size: 190.0,
              margin: EdgeInsets.only(bottom: 16.0)
            ),
            TextWithMargin(
              text: widget.pokemon.name, 
              color: Color(0xFF3E5BA3), 
              fontSize: 28.0, 
              margin: EdgeInsets.only(bottom: 4.0)
            ),
            TextWithMargin(
              text: 'Seed Pokemon', 
              color: Color(0xFF919191), 
              fontSize: 14.0, 
              margin: EdgeInsets.only(bottom: 24.0)
            ),
            _buildInfo('ATTACKS', 'Water, Electric, Grass, Fighting, Fairy'),
            _buildInfo('WEAKNESSES', 'Fire, Ice, Flying, Psychic'),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(String title, String body) {
    return Column(
      children: <Widget>[
        _buildDivider(24.0),
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

  Widget _buildDivider(double marginBottom) {
    return Container(
      color: Color(0xFFFFFFFF),
      height: 1.0,
      margin: EdgeInsets.only(bottom: marginBottom),
    );
  }
}
