import 'package:isar/isar.dart';
part 'thread_color.g.dart';

enum ColorType { primary, secondary }

@collection

/// Is the representation and name of a color from dart is used for save the colors and save it with a custom name betwen the collections that need one
/// The Name [ThreadColor] has not relation with the [Thread] or [Yarn] collection this is only for threading the name and color.
class ThreadColor {
  Id id = Isar.autoIncrement;
  late String name;
  late String color;

  @enumerated
  late ColorType type;
}
