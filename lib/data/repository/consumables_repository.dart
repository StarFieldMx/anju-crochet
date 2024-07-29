import 'package:anju/data/database/isar_crochet_db.dart';
import 'package:anju/data/models/crochet.dart';

abstract class ConsumablesRepository {
  late IsarCrochetDb manager;
  Future<int> createOrUpdateConsumable(Crochet consumable);
  Future<Crochet?> readConsumable(CrochetType type, int id);
  Future<List<Crochet>> getConsumables(CrochetType type);
}
