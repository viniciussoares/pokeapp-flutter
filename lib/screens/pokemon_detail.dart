import 'package:flutter/material.dart';

import '../components/backdrop.dart';
import '../components/poke_app_bar.dart';
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
    final image = Container(
      child: Image.network(
        widget.pokemon.image,
        fit: BoxFit.contain,
      ),
      decoration: new BoxDecoration(
        border: new Border.all(color: Color(0xFFE3E3E3), width: 2.0),
        color: Colors.white,
        shape: BoxShape.circle
      ),
      height: 190.0,
      padding: EdgeInsets.all(32.0),
      margin: EdgeInsets.only(bottom: 16.0),
      width: 190.0,
    );

    return Scaffold(
      appBar: PokeAppBar(
        text: widget.pokemon.name,
      ),
      body: Backdrop(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 42.0),
          children: <Widget>[
            image,
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
