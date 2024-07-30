import 'package:anju/data/database/isar_crochet_db.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/data/models/threads/thread_brand.dart';

abstract class ConsumablesRepository {
  final IsarCrochetDb manager;

  ConsumablesRepository(this.manager);
  Future<int> createOrUpdateConsumable(Crochet consumable);
  Future<Crochet?> readConsumable(CrochetType type, int id);
  Future<List<Crochet>> getConsumables(CrochetType type);
  Future<int> createOrUpdateBrand(ThreadBrand brand);
  Future<List<ThreadBrand>> getThreadBrands();
}
