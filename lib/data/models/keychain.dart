import 'dart:convert';

import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/models.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

class KeyChain extends AnjuMaterial {
  KeyChain(
      {required super.id,
      required super.type,
      required super.color,
      required super.name});
  factory KeyChain.fromRawJson(String str) =>
      KeyChain.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory KeyChain.fromJson(Map<String, dynamic> json) => KeyChain(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        color: (json["color"] as String).toColor(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "color": color.toHex(),
      };

  Map<String, dynamic> toJsonSql() => {
        "type": type,
        "name": name,
        "color": color.toHex(),
      };

  factory KeyChain.hilo({
    required int id,
  }) =>
      KeyChain(
        id: id,
        name: 'Dorado',
        type: AnjuMaType.llavero,
        color: Colors.black12,
      );
}
