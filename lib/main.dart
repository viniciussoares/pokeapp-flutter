import 'package:flutter/material.dart';
import 'screens/pokemon_list.dart';

void main() => runApp(new PokemonApp());

class PokemonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Pokémon',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new PokemonList(),
    );
  }
}
