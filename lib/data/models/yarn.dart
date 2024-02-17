import 'dart:convert';

import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/models.dart';
import 'package:flutter/material.dart';

class Yarn extends AnjuMaterial {
  final double thickness;
  final String trademark;
  Yarn._({
    required super.id,
    required super.type,
    required super.color,
    required super.name,
    required this.thickness,
    required this.trademark,
  });

  factory Yarn.fromRawJson(String str) => Yarn.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Yarn.fromJson(Map<String, dynamic> json) => Yarn._(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        thickness: json["thickness"]?.toDouble() ?? 0.0,
        color: (json["color"] as String).toColor(),
        trademark: json["trademark"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "name": name,
        "thickness": thickness,
        "color": color.toHex(),
        "trademark": trademark,
      };

  Map<String, dynamic> toJsonSql() => {
        "type": type,
        "name": name,
        "thickness": thickness,
        "color": color.toHex(),
        "trademark": trademark,
      };

  factory Yarn.hilo({
    required int id,
  }) =>
      Yarn._(
        id: id,
        name: 'Hilo chino',
        type: AnjuMaType.hilo,
        color: Colors.pink.shade100,
        // HILO
        thickness: 0.5,
        trademark: 'SAMSUNG',
      );
}
