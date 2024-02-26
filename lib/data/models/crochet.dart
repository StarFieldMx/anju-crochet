// Abstract main class for all materials
// ignore_for_file: avoid_print

import 'dart:ui';

import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/thread_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

enum CrochetType {
  thread,
  filling,
  safetyEyes,
  accessories,
  keychains,
}

abstract class Crochet {
  String? id;
  String name;
  int stock;
  CrochetType type;
  Crochet(this.name, this.stock, this.id, this.type);

  // Method to display basic information of the material
  void showInfo() {
    print('Name: $name');
    print('Stock: $stock');
  }

  Future<void> uploadJson(FirebaseFirestore firestore, String collection);

  Map<String, dynamic> toJson();

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
      default:
        // TODO: IMPLEMENT DEFAUTL MATERIAL
        throw ArgumentError('Invalid material type');
    }
  }
}

enum ThreadStatus { nuevo, medio, pocoloco, agotado }

// "Hilo"
class Thread extends Crochet {
  ThreadColor threadColor;
  String brand;
  double thickness;
  ThreadStatus status;
  bool isMultiColor;
  Thread._({
    String? id,
    required String name,
    required int stock,
    required this.threadColor,
    required this.brand,
    required this.thickness,
    required this.status,
    this.isMultiColor = false,
  }) : super(name, stock, id, CrochetType.thread);

  @override
  void showInfo() {
    super.showInfo();
    print('Color: $threadColor');
    print('Brand: $brand');
    print('Thickness: $thickness');
  }

  @override
  Future<void> uploadJson(
      FirebaseFirestore firestore, String collection) async {
    await firestore.collection(collection).add({
      'name': name,
      'stock': stock,
      'type': type.name,
      'threadColor': threadColor.toJson(),
      'status': status.name,
      'brand': brand,
      'thickness': thickness,
      'muticolor': isMultiColor,
    });
  }

  static Thread fromJson(Map<String, dynamic> json) => Thread._(
        id: json['id'],
        name: json['name'],
        stock: json['stock'],
        status: ThreadStatus.values
            .firstWhere((status) => status.name == json['status']),
        threadColor: ThreadColor.fromJson(json['threadColor']),
        brand: json['brand'],
        thickness: json['thickness'],
        isMultiColor: json['muticolor'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'stock': stock,
        'type': type.name,
        'color': threadColor.toJson(),
        'status': status.name,
        'brand': brand,
        'thickness': thickness,
        'muticolor': isMultiColor,
      };
}

// "Relleno"
class Filling extends Crochet {
  bool available;

  Filling._({
    String? id,
    String name = 'Relleno',
    // No es medible así
    int stock = 1,
    required this.available,
  }) : super(name, stock, id, CrochetType.filling);

  @override
  void showInfo() {
    super.showInfo();
    print('Available: $available');
  }

  @override
  Future<void> uploadJson(
      FirebaseFirestore firestore, String collection) async {
    await firestore.collection(collection).doc('relleno').update({
      'stock': stock,
      'type': type.name,
      'available': available,
    });
  }

  static Filling fromJson(Map<String, dynamic> json) => Filling._(
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
  SafetyEyes._({
    String? id,
    required String name,
    required int stock,
    required this.shape,
    required this.size,
  }) : super(name, stock, id, CrochetType.safetyEyes);

  @override
  void showInfo() {
    super.showInfo();
    print('Shape: $shape');
    print('Size: $size mm');
  }

  @override
  Future<void> uploadJson(
      FirebaseFirestore firestore, String collection) async {
    firestore.collection(collection).add({
      'name': name,
      'stock': stock,
      'type': type.name,
      'shape': shape,
      'size': size,
    });
  }

  static SafetyEyes fromJson(Map<String, dynamic> json) => SafetyEyes._(
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

  Accessories._({
    String? id,
    required String name,
    required int stock,
    required this.colors,
  }) : super(name, stock, id, CrochetType.accessories);

  @override
  void showInfo() {
    super.showInfo();
    print('Available colors: $colors');
  }

  @override
  Future<void> uploadJson(
      FirebaseFirestore firestore, String collection) async {
    firestore.collection(collection).add({
      'name': name,
      'stock': stock,
      'type': type.name,
      'colors': colors,
    });
  }

  static Accessories fromJson(Map<String, dynamic> json) => Accessories._(
        id: json['id'],
        name: json['name'],
        stock: json['stock'],
        colors: json['colors'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'stock': stock,
        'type': type.name,
        'colors': colors,
      };
}

// "Llavero"
class Keychains extends Crochet {
  Color color;

  Keychains._({
    String? id,
    required String name,
    required int stock,
    required this.color,
  }) : super(name, stock, id, CrochetType.keychains);

  @override
  void showInfo() {
    super.showInfo();
    print('Color: ${color.toHex()}');
  }

  @override
  Future<void> uploadJson(
      FirebaseFirestore firestore, String collection) async {
    firestore.collection(collection).add({
      'name': name,
      'stock': stock,
      'type': type.name,
      'color': color.toHex(),
    });
  }

  static Keychains fromJson(Map<String, dynamic> json) => Keychains._(
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
