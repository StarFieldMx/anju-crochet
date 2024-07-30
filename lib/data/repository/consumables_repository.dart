import 'package:anju/data/database/isar_crochet_db.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/data/models/threads/thread_brand.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:anju/data/models/threads/thread_type.dart';

abstract class ConsumablesRepository {
  final IsarCrochetDb manager;

  ConsumablesRepository(this.manager);
  Future<int> createOrUpdateConsumable(Crochet consumable,
      {required List<ThreadColor> colors, ThreadType? threadType});
  Future<int> createOrUpdateBrand(ThreadBrand brand);
  Future<int> createOrUpdateThreadType(ThreadType type);
  Future<int> createOrUpdateThreadColor(ThreadColor color);
  Future<Crochet?> readConsumable(CrochetType type, int id);
  Future<List<Crochet>> getConsumables(CrochetType type);
  Future<List<ThreadBrand>> getThreadBrands();
  Future<List<ThreadType>> getThreadTypes();
  Future<List<ThreadColor>> getThreadColors();
}
