import 'package:anju/data/models/material_snapshot.dart';
import 'package:anju/data/models/work.dart';
import 'package:isar/isar.dart';
part 'amigurumi.g.dart';

enum AmigurumiStatus { disponible, sobrepedido, proximamente }

enum AmigurumiType { special, normal }

@collection
class Amigurumi {
  Id id = Isar.autoIncrement;
  late String name;

  /// Precio de la mano de obra
  late int workedHours;

  late int workedMinutes;

  /// Materials
  late List<MaterialSnapshot> materials;

  final images = IsarLinks<AmigurumiImage>();

  /// Status of the amigurumi
  @Enumerated(EnumType.name)
  late AmigurumiStatus status;

  /// UTC time
  late DateTime createdAt;

  /// UTC time
  late DateTime updatedAt;

  final pricesWork = IsarLinks<Work>();

  @enumerated
  late AmigurumiType type;

  /// Precio total de todos los materiales
  double get priceMaterial {
    double price = 0;
    for (var material in materials) {
      price += material.total;
    }
    return price;
  }

  double get _calculateFeeOfWork {
    double myPrice = 0;
    if (pricesWork.isEmpty) {
      throw Exception('¿No hay precios de tus horas de trabajo?');
    }
    for (var price in pricesWork) {
      switch (price.timeLapse) {
        case TimeLapse.hr:
          myPrice += price.fee * workedHours;
          break;
        case TimeLapse.mn:
          myPrice += price.fee * workedMinutes;
          break;
      }
    }
    return myPrice;
  }

  double get total {
    return priceMaterial + _calculateFeeOfWork;
  }
}

@collection
class AmigurumiImage {
  Id id = Isar.autoIncrement;
  late String url;

  @Enumerated(EnumType.name)
  late ImageType type;
}

enum ImageType { local, network }
