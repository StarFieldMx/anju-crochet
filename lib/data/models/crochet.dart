import 'package:anju/data/models/bill.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/data/models/threads/thread_brand.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:anju/data/models/threads/thread_type.dart';
import 'package:isar/isar.dart';

part 'crochet.g.dart';

enum UnitWeight { gr, kg, pza, mm, cm }

enum CrochetType {
  yarn,
  filling,
  safetyEyes,
  accessories,
  keychains,
  prepacking,
  hooks,
}

enum ThreadStatus { nuevo, medio, pocoloco, agotado }

// TODO: VER COMO MANEJAR LOS PRECIOS DE LOS PRODUCCTOS (DIFERENTE A LOS BILLS)

abstract class Crochet {
  Id id = Isar.autoIncrement;
  // late String name;
  final threadColor = IsarLink<ThreadColor>();

  @enumerated
  late CrochetType type;
  late int stock;
  // late double purchasePrice;
  @enumerated
  late UnitWeight unit;

  final image = IsarLink<AnjuImageModel>();
}

@Collection(ignore: {'threadColor'})
class Yarn extends Crochet {
  final threadColors = IsarLinks<ThreadColor>();
  final threadType = IsarLink<ThreadType>();

  final brand = IsarLink<ThreadBrand>();

  /// Milimetros de grosor
  late short thickness;
  @enumerated
  late ThreadStatus status;

  bool get isMultiColor {
    return threadColors.isNotEmpty && threadColors.length > 1;
  }

  @Backlink(to: 'thread')
  final bills = IsarLinks<Bill>();
}

@Collection(ignore: {'threadColor', 'image'})
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

// @Collection(ignore: {'threadColor'})
@collection
class Accessories extends Crochet {
  // final threadColors = IsarLinks<ThreadColor>();

  @Backlink(to: 'accessory')
  final bills = IsarLinks<Bill>();
}

@collection
class Keychains extends Crochet {
  @Backlink(to: 'keychains')
  final bills = IsarLinks<Bill>();
}

@Collection(ignore: {'threadColor'})
class PrePacking extends Crochet {
  late String name;
  late short size;

  @Backlink(to: 'prePacking')
  final bills = IsarLinks<Bill>();
}

@Collection(ignore: {'threadColor'})
class Hooks extends Crochet {
  /// Milimetros de grosor
  late short thickness;
  @Backlink(to: 'hooks')
  final bills = IsarLinks<Bill>();
}
