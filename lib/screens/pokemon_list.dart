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
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    if (_pokemons.isEmpty) {
      await _retrieveLocalPokemons();
    }
  }

  Future<void> _retrieveLocalPokemons() async {
    final json = DefaultAssetBundle
        .of(context)
        .loadString('assets/data/pokemons.json');

    final data = JsonDecoder().convert(await json);

    var pokemons = <Pokemon>[];

    data.forEach((item) {
      var pokemon = Pokemon(
        id: item["id"],
        name: item["name"],
        image: item["image"],
      );

      pokemons.add(pokemon);
    });

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
