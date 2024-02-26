import 'package:anju/config/utils/extensions.dart';
import 'package:flutter/material.dart';

enum ColorType { principal, secundario }

class ThreadColor {
  String name;
  Color color;
  ColorType type;

  ThreadColor._({
    required this.name,
    required this.color,
    required this.type,
  });

  factory ThreadColor.fromJson(Map<String, dynamic> json) => ThreadColor._(
        name: json['name'],
        color: (json['color'] as String).toColor(),
        type: ColorType.values
            .firstWhere((element) => element.name == json['type']),
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'color': color.toHex(),
        'type': type.name,
      };
}
