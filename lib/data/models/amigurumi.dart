import 'dart:math';

import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/models.dart';

class Amigurumi {
  final int id;
  final String name;
  final double price;
  final List<Crochet> materials;
  final List<AmigurumiImage> images;
  final bool available;
  Amigurumi(
      {required this.id,
      required this.name,
      required this.price,
      required this.materials,
      required this.images,
      required this.available});
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
    double price = Random().nextInt(46) + 5.toDouble();
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
      available: true,
    );
  }
  Map<String, dynamic> toMap() {
    // los materiales ya existen, imagenes no
    return {
      'id': id,
      'name': name,
      'price': price,
      'images': [],
      'available': available ? 1 : 0,
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
      available: (map["available"] as int) == 1,
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
