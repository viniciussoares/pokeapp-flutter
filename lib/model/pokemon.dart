import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Pokemon {
  final int id;
  final String height;
  final String image;
  final String name;
  final String resistant;
  final String type;
  final String weaknesses;
  final String weight;

  const Pokemon({
    this.id,
    this.height,
    this.image,
    this.name,
    this.resistant,
    this.type,
    this.weaknesses,
    this.weight,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return new Pokemon(
      id: json['id'],
      height: json['height'],
      image: json['image'],
      name: json['name'],
      resistant: json['resistant'],
      type: json['type'],
      weaknesses: json['weaknesses'],
      weight: json['weight'],
    );
  }
}
