import 'dart:math';

import 'package:flutter/material.dart';

class AnjuColor {
  final int id;
  final Color color;
  final String name;
  AnjuColor._(this.id, this.color, this.name);

  factory AnjuColor.test() {
    final random = Random();
    final id = random.nextInt(1000); // Genera un ID aleatorio
    final colorIndex = random.nextInt(_colorList
        .length); // Obtiene un índice aleatorio para la lista de colores
    final color = _colorList[
        colorIndex]; // Obtiene el color correspondiente al índice aleatorio
    final name = 'Color $id'; // Genera un nombre aleatorio para el color

    return AnjuColor._(id, color, name);
  }

  static const _colorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.pink,
    Colors.indigo,
    Colors.cyan,
  ];
}
