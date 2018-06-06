import 'package:flutter/material.dart';

import '../components/avatar.dart';
import '../components/backdrop.dart';
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
            Avatar(url: widget.pokemon.image, size: 190.0, margin: EdgeInsets.only(bottom: 16.0)),
            _buildText(widget.pokemon.name, Color(0xFF3E5BA3), 28.0, 4.0),
            _buildText('Seed Pokemon', Color(0xFF919191), 14.0, 24.0),
            _buildInfo('ATTACKS', 'Water, Electric, Grass, Fighting, Fairy'),
            _buildInfo('WEAKNESSES', 'Fire, Ice, Flying, Psychic'),
          ],
        ),
      ),
    );
  }

  Widget _buildText(String text, Color color, double fontSize, double marginBottom) {
    return Container(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: color, fontSize: fontSize),
      ),
      margin: EdgeInsets.only(bottom: marginBottom),
    );
  }

  Widget _buildInfo(String title, String body) {
    return Column(
      children: <Widget>[
          _buildDivider(24.0),
          _buildText(title, Color(0xFF146a8a), 12.0, 12.0),
          _buildText(body, Color(0xFF919191), 14.0, 24.0),
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
