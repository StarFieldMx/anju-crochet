import 'package:isar/isar.dart';

enum TimeLapse { hr, mn }

@collection
class Work {
  Id id = Isar.autoIncrement;

  /// Tarifa (lo que gana en cierto tiempo)
  late double fee;

  /// Unidad de tiempo para medir la tarifa
  late TimeLapse timeLapse;
}
