import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Evolution {
  final int id;
  final String image;
  final String name;

  const Evolution({
    this.id,
    this.image,
    this.name,
  });

  factory Evolution.fromJson(Map<String, dynamic> json) {
    return new Evolution(
      id: json['id'],
      image: json['image'],
      name: json['name'],
    );
  }
}
