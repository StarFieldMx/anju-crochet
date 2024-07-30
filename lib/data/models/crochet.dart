import 'package:anju/data/models/bill.dart';
import 'package:anju/data/models/threads/thread_brand.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:anju/data/models/threads/thread_type.dart';
import 'package:isar/isar.dart';

part 'crochet.g.dart';

enum UnitWeight { gr, kg, pza }

enum CrochetType {
  thread,
  filling,
  safetyEyes,
  accessories,
  keychains,
  prepacking,
}

enum ThreadStatus { nuevo, medio, pocoloco, agotado }

abstract class Crochet {
  Id id = Isar.autoIncrement;
  late String name;
  @enumerated
  late CrochetType type;
  late int stock;
  // late double purchasePrice;
  // TODO: MIGRAR A UN NUEVO MODELO QUE SEA PARA LAS VENTAS
  @enumerated
  late UnitWeight unit;
}

@collection
class Thread extends Crochet {
  final threadColor = IsarLinks<ThreadColor>();
  final threadType = IsarLink<ThreadType>();
  final brand = IsarLink<ThreadBrand>();
  late double thickness;
  @enumerated
  late ThreadStatus status;

  bool get isMultiColor {
    return threadColor.isNotEmpty && threadColor.length > 1;
  }

  @Backlink(to: 'thread')
  final bills = IsarLinks<Bill>();
}

@collection
class Filling extends Crochet {
  late bool available;
  @Backlink(to: 'filling')
  final bills = IsarLinks<Bill>();
}

@collection
class SafetyEyes extends Crochet {
  late String shape;
  late String size;
  @Backlink(to: 'safetyEye')
  final bills = IsarLinks<Bill>();
}

@collection
class Accessories extends Crochet {
  late List<String> colors;
  @Backlink(to: 'accessory')
  final bills = IsarLinks<Bill>();
}

@collection
class Keychains extends Crochet {
  late String color;
  @Backlink(to: 'keychains')
  final bills = IsarLinks<Bill>();
}

@collection
class PrePacking extends Crochet {
  @Backlink(to: 'prePacking')
  final bills = IsarLinks<Bill>();
}
