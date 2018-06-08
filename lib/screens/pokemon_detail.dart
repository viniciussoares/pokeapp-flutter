import 'package:flutter/material.dart';

import '../components/avatar.dart';
import '../components/backdrop.dart';
import '../components/text_with_margin.dart';
import '../components/poke_info.dart';
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
        title: Text(widget.pokemon.name),
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
              text: widget.pokemon.type, 
              color: Color(0xFF919191), 
              fontSize: 14.0, 
              margin: EdgeInsets.only(bottom: 24.0)
            ),
            PokeInfo(title: 'RESISTANT', body: widget.pokemon.resistant),
            PokeInfo(title: 'WEAKNESSES', body: widget.pokemon.weaknesses),
          ],
        ),
      ),
    );
  }
}
