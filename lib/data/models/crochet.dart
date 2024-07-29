import 'package:anju/data/models/thread_color.dart';
import 'package:isar/isar.dart';

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
  late int quantity;
  late double cost;
  @enumerated
  late UnitWeight unit;

  double get unitPrice {
    return cost / quantity;
  }
}

@collection
class Thread extends Crochet {
  final threadColor = IsarLinks<ThreadColor>();
  late String brand;
  late double thickness;
  @enumerated
  late ThreadStatus status;

  bool get isMultiColor {
    return threadColor.isNotEmpty && threadColor.length > 1;
  }
}

@collection
class Filling extends Crochet {
  late bool available;
}

@collection
class SafetyEyes extends Crochet {
  late String shape;
  late String size;
}

@collection
class Accessories extends Crochet {
  late List<String> colors;
}

@collection
class Keychains extends Crochet {
  late String color;
}

@collection
class PrePacking extends Crochet {}
