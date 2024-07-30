import 'package:isar/isar.dart';

part 'thread_brand.g.dart';

@collection
class ThreadBrand {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String name;
}
