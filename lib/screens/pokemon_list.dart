import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import '../components/activity_indicator.dart';
import '../components/backdrop.dart';
import '../components/pokemon_tile.dart';
import '../model/pokemon.dart';
import '../screens/pokemon_detail.dart';

class PokemonList extends StatefulWidget {
  const PokemonList();

  @override
  _PokemonList createState() => _PokemonList();
}

class _PokemonList extends State<PokemonList> {
  final _pokemons = <Pokemon>[];

  @override
  void initState() {
    super.initState();
    this._loadPokemons();
  }

  _loadPokemons() async {
    final data = DefaultAssetBundle.of(context).loadString('assets/data/pokemons.json');
    final json = JsonDecoder().convert(await data);
    final pokemons = json.map<Pokemon>((jsonItem) => new Pokemon.fromJson(jsonItem)).toList();

    setState(() {
      _pokemons.clear();
      _pokemons.addAll(pokemons);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_pokemons.isEmpty) {
      return Backdrop(child: ActivityIndicator());
    }

    final width = MediaQuery.of(context).size.width;
    final rows = (width / 160.0).round();
    final spacing = 16.0;

    var grid = GridView.count(
      children: _pokemons.map((Pokemon item) => _buildTile(item)).toList(),
      crossAxisCount: rows,
      crossAxisSpacing: spacing,
      mainAxisSpacing: spacing,
      padding: EdgeInsets.all(spacing),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF81CCCD),
        title: Text('PokeApp'),
      ),
      body: Backdrop(
        child: grid,
      ),
    );
  }

  Widget _buildTile(Pokemon pokemon) {
    return PokemonTile(
      pokemon: pokemon,
      onTap: (item) => Navigator.of(context).push(
        new PageRouteBuilder(
          pageBuilder: (_, __, ___) => new PokemonDetail(item),
        )
      ),
    );
  }
}
