import 'package:flutter/material.dart';

import '../components/activity_indicator.dart';
import '../components/backdrop.dart';

class PokemonList extends StatefulWidget {
  const PokemonList();

  @override
  _PokemonList createState() => _PokemonList();
}

class _PokemonList extends State<PokemonList> {
  @override
  Widget build(BuildContext context) {
    return Backdrop(child: ActivityIndicator());
  }
}
