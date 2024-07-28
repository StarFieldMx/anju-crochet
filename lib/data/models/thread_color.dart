import 'package:anju/config/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

enum ColorType { primary, secondary }

// @collection
class ThreadColor {
  final Id id = Isar.autoIncrement;
  String name;
  Color color;

  @Enumerated(EnumType.name)
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
