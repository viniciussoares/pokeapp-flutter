import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import '../components/activity_indicator.dart';
import '../components/backdrop.dart';
import '../model/pokemon.dart';

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

    if (data is! List) {
      throw ('Data retrieved from API is not a Map');
    }

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

    return Backdrop(child: Container());
  }
}
