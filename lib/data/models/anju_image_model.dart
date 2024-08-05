import 'package:isar/isar.dart';

part 'anju_image_model.g.dart';

enum ImageSourceAnju { local, network }

@collection
class AnjuImageModel {
  Id id = Isar.autoIncrement;
  late String url;

  @enumerated
  late ImageSourceAnju type;
}
