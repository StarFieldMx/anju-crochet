import 'dart:math';

class Amigurumi {
  final int id;
  final String name;
  final double price;
  final List<Material> materials;
  final List<AmigurumiImage> images;

  Amigurumi({
    required this.id,
    required this.name,
    required this.price,
    required this.materials,
    required this.images,
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
    double price = Random().nextInt(46) + 5.toDouble();
    String name = names[Random().nextInt(names.length)];
    // Generar un id aleatorio
    int id =
        Random.secure().nextInt(1000); // Ejemplo de rango de ids entre 0 y 999
    return Amigurumi(
      name: name,
      price: price,
      images: [],
      materials: [],
      id: id,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      // Convertir la lista de materiales a un formato adecuado para SQLite
      // (puedes hacer algo similar para las imágenes)
      'materials': materials.map((material) => material.toMap()).toList(),
    };
  }

  static Amigurumi fromMap(Map<String, dynamic> map) {
    return Amigurumi(
      id: map['id'],
      name: map['name'],
      price: map['price'],
      materials: List<Material>.from(
          map['materials'].map((materialMap) => Material.fromMap(materialMap))),
      //TODO: LOGIC IMAGES
      images: [],
    );
  }
}

class Material {
  final int id;
  final String name;

  Material({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  static Material fromMap(Map<String, dynamic> map) {
    return Material(
      id: map['id'],
      name: map['name'],
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
      'type': type.index, // Almacena el índice del enum en lugar del valor
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
