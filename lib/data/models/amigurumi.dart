import 'package:anju/data/models/bill.dart';
import 'package:anju/data/models/models.dart';
import 'package:isar/isar.dart';
part 'amigurumi.g.dart';

enum AmigurumiAvailability { disponible, sobrepedido, proximamente }

enum AmigurumiType { especial, normal }

@collection
class Amigurumi {
  Id id = Isar.autoIncrement;
  late String name;

  /// Tiempo de la mano de obra
  late short workedTime;

  @ignore
  Duration get workedDuration {
    return Duration(milliseconds: workedTime);
  }

  // TODO: IMPLEMENT (WITH ID AND TYPES)
  @ignore
  final List<Crochet> crochetMaterials = [];

  /// Materials IDS
  late List<int> ids;

  /// types of material IDS
  late List<String> materialsTypes;

  final images = IsarLinks<AnjuImageModel>();

  /// Status of the amigurumi
  @enumerated
  late AmigurumiAvailability status;

  /// UTC time
  late DateTime createdAt;

  /// UTC time
  late DateTime updatedAt;

  @Backlink(to: 'amigurumi')
  final bills = IsarLinks<Bill>();

  set bills(IsarLinks<Bill> value) {
    bills = value;
  }

  // TODO: IMPLEMENT
  @enumerated
  late AmigurumiType type;

  // TODO: MAX (0 to 255) Dependiendo de la disponibilidad (si hay existente entonces hay stock si no no)
  byte stock = 0;

  Amigurumi() {
    assert(ids.length == materialsTypes.length,
        'materials and materialsTypes must have the same length');
  }

  Amigurumi copyWith({
    List<int>? ids,
    List<String>? materialsTypes,
    AmigurumiAvailability? status,
    AmigurumiType? type,
    byte? stock,
    DateTime? createdAt,
    DateTime? updatedAt,
    IsarLinks<Bill>? bills,
  }) {
    return Amigurumi()
      ..ids = ids ?? this.ids
      ..materialsTypes = materialsTypes ?? this.materialsTypes
      ..status = status ?? this.status
      ..type = type ?? this.type
      ..stock = stock ?? this.stock
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..bills = bills ?? this.bills;
  }
}
