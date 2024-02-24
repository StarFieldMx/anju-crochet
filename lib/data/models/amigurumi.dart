import 'dart:math';

import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/models.dart';

enum AmigurumiStatus { disponible, sobrepedido, proximamente }

enum AmigurumiType { special, normal }

class Amigurumi {
  final int id;
  final String name;
  final double price;
  final List<Crochet> materials;
  final List<AmigurumiImage> images;
  final AmigurumiStatus status;
  final AmigurumiType type;
  Amigurumi({
    required this.id,
    required this.name,
    required this.price,
    required this.materials,
    required this.images,
    required this.status,
    required this.type,
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
    int id =
        Random.secure().nextInt(1000); // Ejemplo de rango de ids entre 0 y 999
    return Amigurumi(
      name: name,
      price: price,
      images: [
        AmigurumiImage(id: 1, type: ImageType.local, url: AnjuImages.test)
      ],
      materials: [],
      id: id,
      status: AmigurumiStatus.disponible,
      type: Random().nextInt(1) == 1
          ? AmigurumiType.normal
          : AmigurumiType.special,
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
      id: map['id'],
      name: map['name'],
      price: map['price'],
      materials: List<Crochet>.from(
          map['materials'].map((materialMap) => Crochet.fromJson(materialMap))),
      //TODO: LOGIC IMAGES
      images: [],
      status: AmigurumiStatus.values.firstWhere(
        (element) => element.name == map["status"],
        orElse: () => AmigurumiStatus.disponible,
      ),
      type: AmigurumiType.values.firstWhere(
        (element) => element.name == map["type"],
        orElse: () => AmigurumiType.normal,
      ),
    );
  }
}

class AmigurumiImage {
  final int id;
  final String url;
  final ImageType type;

  AmigurumiImage({required this.id, required this.url, required this.type});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'url': url,
      'type': type
          .index, // TODO: Almacena el índice del enum en lugar del valor (SQL)
    };
  }

  static AmigurumiImage fromMap(Map<String, dynamic> map) {
    return AmigurumiImage(
      id: map['id'],
      url: map['url'],
      type: ImageType.values[
          map['type']], // Convierte el índice de nuevo al valor del enum
    );
  }
}

enum ImageType { local, network }
