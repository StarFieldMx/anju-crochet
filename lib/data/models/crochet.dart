// Abstract main class for all materials
// ignore_for_file: avoid_print

import 'dart:ui';

import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/thread_color.dart';
import 'package:isar/isar.dart';

enum CrochetType {
  thread,
  filling,
  safetyEyes,
  accessories,
  keychains,
  prepacking,
}

@collection
class Crochet {
  Id id = Isar.autoIncrement;
  String name;
  int stock;

  @Enumerated(EnumType.name)
  CrochetType type;

  Crochet(this.id, this.name, this.stock, this.type);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'stock': stock,
      'type': type.name,
    };
  }

  void showInfo() {
    print('Name: $name');
    print('Stock: $stock');
    print('Type: ${type.name}');
  }

  factory Crochet.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'thread':
        return Thread.fromJson(json);
      case 'filling':
        return Filling.fromJson(json);
      case 'safetyEyes':
        return SafetyEyes.fromJson(json);
      case 'accessories':
        return Accessories.fromJson(json);
      case 'keychains':
        return Keychains.fromJson(json);
      case 'prepacking':
        return PrePacking.fromJson(json);
      default:
        throw ArgumentError('Invalid material type');
    }
  }
}

enum ThreadStatus { nuevo, medio, pocoloco, agotado }

// "Hilo"
class Thread extends Crochet {
  List<ThreadColor> threadColor;
  String brand;
  double thickness;
  ThreadStatus status;

  Thread({
    required Id id,
    required String name,
    required int stock,
    required this.threadColor,
    required this.brand,
    required this.thickness,
    required this.status,
  }) : super(id, name, stock, CrochetType.thread);

  @override
  void showInfo() {
    super.showInfo();
    print('Color: $threadColor');
    print('Brand: $brand');
    print('Thickness: $thickness');
  }

  factory Thread.fromJson(Map<String, dynamic> json) => Thread(
        id: json['id'],
        name: json['name'],
        stock: json['stock'],
        status: ThreadStatus.values
            .firstWhere((status) => status.name == json['status']),
        threadColor: (json['threadColor'] as List)
            .map((colorJson) => ThreadColor.fromJson(colorJson))
            .toList(),
        brand: json['brand'],
        thickness: json['thickness'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'stock': stock,
        'type': type.name,
        'threadColor': threadColor.map((color) => color.toJson()).toList(),
        'status': status.name,
        'brand': brand,
        'thickness': thickness,
      };

  bool get isMultiColor {
    return threadColor.isNotEmpty && threadColor.length > 1;
  }
}

class Filling extends Crochet {
  bool available;

  Filling({
    required Id id,
    String name = 'Relleno',
    // No es medible así
    int stock = 1,
    required this.available,
  }) : super(id, name, stock, CrochetType.filling);

  @override
  void showInfo() {
    super.showInfo();
    print('Available: $available');
  }

  factory Filling.fromJson(Map<String, dynamic> json) => Filling(
        id: json['id'],
        name: json['name'],
        stock: json['stock'],
        available: json['available'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'stock': stock,
        'type': type.name,
        'available': available,
      };
}

// "SafeEyes"
class SafetyEyes extends Crochet {
  String shape;
  double size;
  SafetyEyes({
    required Id id,
    required String name,
    required int stock,
    required this.shape,
    required this.size,
  }) : super(id, name, stock, CrochetType.safetyEyes);

  @override
  void showInfo() {
    super.showInfo();
    print('Shape: $shape');
    print('Size: $size mm');
  }

  factory SafetyEyes.fromJson(Map<String, dynamic> json) => SafetyEyes(
        id: json['id'],
        name: json['name'],
        stock: json['stock'],
        shape: json['shape'],
        size: json['size'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'stock': stock,
        'type': type.name,
        'shape': shape,
        'size': size,
      };
}

// "Accessories"
class Accessories extends Crochet {
  List<String> colors;

  Accessories({
    required Id id,
    required String name,
    required int stock,
    required this.colors,
  }) : super(id, name, stock, CrochetType.accessories);

  @override
  void showInfo() {
    super.showInfo();
    print('Available colors: $colors');
  }

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'stock': stock,
        'type': type.name,
        'colors': colors,
      };

  factory Accessories.fromJson(Map<String, dynamic> json) => Accessories(
        id: json['id'],
        name: json['name'],
        stock: json['stock'],
        colors: List<String>.from(json['colors']),
      );
}

// "Llavero"
class Keychains extends Crochet {
  Color color;

  Keychains({
    required Id id,
    required String name,
    required int stock,
    required this.color,
  }) : super(id, name, stock, CrochetType.keychains);

  @override
  void showInfo() {
    super.showInfo();
    print('Color: ${color.toHex()}');
  }

  factory Keychains.fromJson(Map<String, dynamic> json) => Keychains(
        id: json['id'],
        name: json['name'],
        stock: json['stock'],
        color: (json['color'] as String).toColor(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'stock': stock,
        'type': type.name,
        'color': color.toHex(),
      };
}

class PrePacking extends Crochet {
  PrePacking({
    required Id id,
    required String name,
    required int stock,
  }) : super(id, name, stock, CrochetType.prepacking);

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'stock': stock,
        'type': type.name,
      };

  static PrePacking fromJson(Map<String, dynamic> json) => PrePacking(
        id: json['id'],
        name: json['name'],
        stock: json['stock'],
      );
}
