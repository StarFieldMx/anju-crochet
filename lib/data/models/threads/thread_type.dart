import 'package:isar/isar.dart';

part 'thread_type.g.dart';

@collection
class ThreadType {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String name;
}
