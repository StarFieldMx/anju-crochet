import 'package:anju/data/models/bill.dart';
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
  late List<int> materials;
  // @Enumerated(EnumType.name)
  late List<String> materialsTypes;

  final images = IsarLinks<AmigurumiImage>();

  /// Status of the amigurumi
  @enumerated
  late AmigurumiStatus status;

  /// UTC time
  late DateTime createdAt;

  /// UTC time
  late DateTime updatedAt;

  // final pricesWork = IsarLinks<Work>();

  @Backlink(to: 'amigurumi')
  final bills = IsarLinks<Bill>();

  @enumerated
  late AmigurumiType type;

  Amigurumi() {
    assert(materials.length == materialsTypes.length,
        'materials and materialsTypes must have the same length');
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
