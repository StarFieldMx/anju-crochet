import 'dart:math';

import 'package:anju/data/models/models.dart';
import 'package:isar/isar.dart';

enum AmigurumiStatus { disponible, sobrepedido, proximamente }

enum AmigurumiType { special, normal }

@collection
class Amigurumi {
  final Id id = Isar.autoIncrement;
  final String name;
  final double price;
  final materials = IsarLinks<Crochet>();

  final images = IsarLinks<AmigurumiImage>();

  /// Status of the amigurumi
  @Enumerated(EnumType.name)
  final AmigurumiStatus status;

  /// UTC time
  final DateTime createdAt;

  /// UTC time
  final DateTime updatedAt;

  @enumerated
  final AmigurumiType type;
  Amigurumi({
    required this.name,
    required this.price,
    required this.status,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });
  factory Amigurumi.random() {
    // Nombres aleatorios para los amigurumis
    List<String> names = [
      'Fluffy',
      'Spike',
      'Bubbles',
      'Whiskers',
      'Sunny',
      'Cotton',
      'Peaches'
    ];

    // Precios aleatorios entre 5 y 50
    double price = Random().nextInt(200) + 5.toDouble();
    String name = names[Random().nextInt(names.length)];
    // Generar un id aleatorio
    return Amigurumi(
      name: name,
      price: price,
      // images: [
      //   AmigurumiImage(id: 1, type: ImageType.local, url: AnjuImages.test)
      // ],
      // materials: [],
      status: AmigurumiStatus.disponible,
      type: Random().nextInt(1) == 1
          ? AmigurumiType.normal
          : AmigurumiType.special,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
  Map<String, dynamic> toMap() {
    // los materiales ya existen, imagenes no
    return {
      'id': id,
      'name': name,
      'price': price,
      'images': [],
      'status': status.name,
      'type': type.name,
    };
  }

  static Amigurumi fromMap(Map<String, dynamic> map) {
    return Amigurumi(
      // id: map['id'],
      name: map['name'],
      price: map['price'],
      // materials: List<Crochet>.from(
      //     map['materials'].map((materialMap) => Crochet.fromJson(materialMap))),
      //TODO: LOGIC IMAGES
      // images: [],
      status: AmigurumiStatus.values.firstWhere(
        (element) => element.name == map["status"],
        orElse: () => AmigurumiStatus.disponible,
      ),
      type: AmigurumiType.values.firstWhere(
        (element) => element.name == map["type"],
        orElse: () => AmigurumiType.normal,
      ),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}

@collection
class AmigurumiImage {
  Id id = Isar.autoIncrement;
  String? url;

  @Enumerated(EnumType.name)
  ImageType? type;
}

enum ImageType { local, network }
