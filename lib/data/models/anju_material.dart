import 'dart:ui';

enum AnjuMaType { llavero, hilo }

abstract class AnjuMaterial {
  final int id;
  final String name;
  final AnjuMaType type;
  final Color color;

  AnjuMaterial({
    required this.name,
    required this.id,
    required this.type,
    required this.color,
  });
}
