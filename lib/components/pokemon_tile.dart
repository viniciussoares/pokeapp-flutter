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
          splashColor: Color(0xFF3E5BA3),
          onTap: onTap == null ? null : () => onTap(pokemon),
          child: _buildContent(context),
        ),
      ),
    );
  }

  _buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          _buildImage(context),
          _buildName(context),
        ],
      ),
    );
  }

  _buildImage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 100.0, 
        width: 100.0,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(
            const Radius.circular(50.0),
          ),
          border: new Border.all(color: Color(0xFFE3E3E3), width: 2.0),
          color: Colors.white,
        ),
      ),
    );
  }

  _buildName(BuildContext context) {
    return Center(
      child: Text(
        pokemon.name,
        textAlign: TextAlign.center,
        style: TextStyle(color: Color(0xFF3E5BA3), fontSize: 18.0),
      ),
    );
  }
}
