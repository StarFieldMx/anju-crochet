import 'package:anju/data/models/crochet.dart';
import 'package:isar/isar.dart';

@embedded
class MaterialSnapshot {
  late String name;
  late double cost;
  late int quantity;
  @enumerated
  late UnitWeight unit;

  static MaterialSnapshot fromCrochet(Crochet crochet) {
    return MaterialSnapshot()
      ..name = crochet.name
      ..cost = crochet.cost
      ..quantity = crochet.quantity
      ..unit = crochet.unit;
  }

  double get total {
    return cost * quantity;
  }
}
