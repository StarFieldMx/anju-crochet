import 'package:isar/isar.dart';

enum ColorType { primary, secondary }

@collection
class ThreadColor {
  Id id = Isar.autoIncrement;
  late String name;
  late String color;

  @enumerated
  late ColorType type;
}
