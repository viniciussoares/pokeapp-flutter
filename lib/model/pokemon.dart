import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Pokemon {
  final int id;
  final String name;
  final String image;

  const Pokemon({
    @required this.id,
    @required this.name,
    @required this.image,
  })  : assert(id != null),
        assert(name != null),
        assert(image != null);
}
