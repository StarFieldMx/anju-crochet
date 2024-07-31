import 'package:anju/data/database/isar_crochet_db.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/data/models/threads/thread_brand.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:anju/data/models/threads/thread_type.dart';

abstract class ConsumablesRepository {
  final IsarCrochetDb manager;

  ConsumablesRepository(this.manager);
  // Create or update
  Future<int> createOrUpdateConsumable(Crochet consumable,
      {required List<ThreadColor> colors, ThreadType? threadType});
  Future<int> createOrUpdateBrand(ThreadBrand brand);
  Future<int> createOrUpdateThreadType(ThreadType type);
  Future<int> createOrUpdateThreadColor(ThreadColor color);

  // Get Collecction
  Future<List<Crochet>> getConsumables(CrochetType type);
  Future<List<ThreadBrand>> getThreadBrands();
  Future<List<ThreadType>> getThreadTypes();
  Future<List<ThreadColor>> getThreadColors();
  Future<List<Hooks>> getHooks();

  // READ ONE OBJECT FROM A COLLECTION
  Future<Crochet?> readConsumable(CrochetType type, int id);

  // ONLY ONE FILL
  Future<Filling?> getFilling();
}
