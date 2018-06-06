import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'avatar.dart';
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
    return _wrapContent([
        Avatar(
          url: pokemon.image, 
          size: 100.0, 
          margin: EdgeInsets.only(bottom: 8.0)
        ),
        Text(
          pokemon.name,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xFF3E5BA3), fontSize: 18.0),
        ),
    ]);
  }

  _wrapContent(List<Widget> children) {
    return Material(
      color: Colors.transparent,
      child: Container(
        child: InkWell(
          borderRadius: BorderRadius.circular(12.0),
          child:  Column(children: children),
          onTap: onTap == null ? null : () => onTap(pokemon),
          splashColor: Color(0xFF81CCCD),
        ),
        height: 100.0,
      ),
    );
  }
}
