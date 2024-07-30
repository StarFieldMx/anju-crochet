import 'package:anju/data/database/isar_crochet_db.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/data/models/threads/thread_brand.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:anju/data/models/threads/thread_type.dart';
import 'package:anju/data/repository/consumables_repository.dart';
import 'package:isar/isar.dart';

class ConsumablesService extends ConsumablesRepository {
  ConsumablesService(super.manager);
  static Future<ConsumablesService> createInstance() async {
    final manager = await IsarCrochetDb.initializeIsarDb();
    return ConsumablesService(manager);
  }

  @override
  Future<int> createOrUpdateConsumable(Crochet consumable,
      {List<ThreadColor>? colors, ThreadType? threadType}) async {
    // Map to associate Crochet types with their database operations
    final Map<Type, Future<int> Function()> operations = {
      Thread: () => manager.db.writeTxn(() async {
            final thread = consumable as Thread;
            final id = await manager.db.threads.put(thread);
            await thread.brand.save();
            if (colors != null && colors.isNotEmpty) {
              for (var color in colors) {
                thread.threadColor.add(color);
              }
              thread.threadColor.save();
            }
            if (threadType != null) {
              await thread.threadType.save();
            }
            return id;
          }),
      Filling: () => manager.db
          .writeTxn(() => manager.db.fillings.put(consumable as Filling)),
      SafetyEyes: () => manager.db
          .writeTxn(() => manager.db.safetyEyes.put(consumable as SafetyEyes)),
      Accessories: () => manager.db.writeTxn(
          () => manager.db.accessories.put(consumable as Accessories)),
      Keychains: () => manager.db
          .writeTxn(() => manager.db.keychains.put(consumable as Keychains)),
      PrePacking: () => manager.db
          .writeTxn(() => manager.db.prePackings.put(consumable as PrePacking)),
    };

    // Perform the operation based on the consumable's type
    final operation = operations[consumable.runtimeType];
    if (operation != null) {
      return operation();
    }

    // Return -1 if the type is not recognized
    throw Exception('No type found');
    // return -1;
  }

  @override
  Future<List<Crochet>> getConsumables(CrochetType type) async {
    switch (type) {
      case CrochetType.thread:
        return manager.db.collection<Thread>().where().findAll();
      case CrochetType.filling:
        return manager.db.collection<Filling>().where().findAll();
      case CrochetType.safetyEyes:
        return manager.db.collection<SafetyEyes>().where().findAll();
      case CrochetType.accessories:
        return manager.db.collection<Accessories>().where().findAll();
      case CrochetType.keychains:
        return manager.db.collection<Keychains>().where().findAll();
      case CrochetType.prepacking:
        return manager.db.collection<PrePacking>().where().findAll();
    }
  }

  @override
  Future<Crochet?> readConsumable(CrochetType type, int id) {
    switch (type) {
      case CrochetType.thread:
        return manager.db.threads.get(id);
      case CrochetType.filling:
        return manager.db.fillings.get(id);
      case CrochetType.safetyEyes:
        return manager.db.safetyEyes.get(id);
      case CrochetType.accessories:
        return manager.db.accessories.get(id);
      case CrochetType.keychains:
        return manager.db.keychains.get(id);
      case CrochetType.prepacking:
        return manager.db.prePackings.get(id);
    }
  }

  @override
  Future<int> createOrUpdateBrand(ThreadBrand brand) async {
    return manager.db.writeTxn(() => manager.db.threadBrands.put(brand));
  }

  @override
  Future<List<ThreadBrand>> getThreadBrands() {
    return manager.db.collection<ThreadBrand>().where().findAll();
  }
}
