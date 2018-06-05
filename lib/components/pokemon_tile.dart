import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../model/pokemon.dart';

class PokemonTile extends StatelessWidget {
  final Pokemon pokemon;
  final ValueChanged<Pokemon> onTap;

  const PokemonTile({
    Key key,
    @required this.pokemon,
    this.onTap,
  })  : assert(pokemon != null),
        super(key: key);

  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        child: InkWell(
          borderRadius: BorderRadius.circular(12.0),
          child: _buildContent(context),
          onTap: onTap == null ? null : () => onTap(pokemon),
          splashColor: Color(0xFF81CCCD),
        ),
        height: 100.0,
      ),
    );
  }

  _buildContent(BuildContext context) {
    return Column(
      children: [
        _buildImage(context),
        Container(height: 8.0),
        _buildName(context),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  _buildImage(BuildContext context) {
    return Container(
      child: Image.network(
        pokemon.image,
        fit: BoxFit.fill,
      ),
      decoration: new BoxDecoration(
        border: new Border.all(color: Color(0xFFE3E3E3), width: 2.0),
        color: Colors.white,
        shape: BoxShape.circle
      ),
      height: 100.0,
      padding: EdgeInsets.all(16.0),
      width: 100.0,
    );
  }

  _buildName(BuildContext context) {
    return Text(
      pokemon.name,
      textAlign: TextAlign.center,
      style: TextStyle(color: Color(0xFF3E5BA3), fontSize: 18.0),
    );
  }
}
