import 'package:anju/data/database/isar_crochet_db.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/data/models/models.dart';
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
      {required List<ThreadColor> colors,
      ThreadType? threadType,
      AnjuImageModel? image}) async {
    // Map to associate Crochet types with their database operations
    final Map<Type, Future<int> Function()> operations = {
      Yarn: () => manager.db.writeTxn(() async {
            final thread = consumable as Yarn;
            final id = await manager.db.yarns.put(thread);
            await thread.brand.save();

            if (colors.isNotEmpty) {
              for (var color in colors) {
                thread.threadColors.add(color);
              }
              await thread.threadColors.save();
            }
            if (threadType != null) {
              thread.threadType.value = threadType;
              await thread.threadType.save();
            }
            if (image != null) {
              thread.image.value = image;
              await thread.image.save();
            }
            await thread.brand.save();
            return id;
          }),
      Filling: () => manager.db
          .writeTxn(() => manager.db.fillings.put(consumable as Filling)),
      SafetyEyes: () => manager.db.writeTxn(() async {
            final eyes = consumable as SafetyEyes;
            final id = await manager.db.safetyEyes.put(eyes);
            if (colors.isNotEmpty) {
              final myColor = colors[0];
              eyes.threadColor.value = myColor;
              await eyes.threadColor.save();
            }
            if (image != null) {
              eyes.image.value = image;
              await eyes.image.save();
            }
            return id;
          }),
      Accessories: () => manager.db.writeTxn(() async {
            final accessory = consumable as Accessories;
            final id = await manager.db.accessories.put(accessory);
            if (colors.isNotEmpty) {
              final myColor = colors[0];
              accessory.threadColor.value = myColor;
              await accessory.threadColor.save();
            }
            if (image != null) {
              accessory.image.value = image;
              await accessory.image.save();
            }
            return id;
          }),
      Keychains: () => manager.db.writeTxn(() async {
            final keychain = consumable as Keychains;
            final id = await manager.db.keychains.put(keychain);
            if (colors.isNotEmpty) {
              final myColor = colors[0];
              keychain.threadColor.value = myColor;
              await keychain.threadColor.save();
            }
            if (image != null) {
              keychain.image.value = image;
              await keychain.image.save();
            }
            return id;
          }),
      PrePacking: () => manager.db.writeTxn(() async {
            final prepacking = consumable as PrePacking;
            final id = manager.db.prePackings.put(prepacking);
            if (image != null) {
              prepacking.image.value = image;
              await prepacking.image.save();
            }
            return id;
          }),
      Hooks: () => manager.db.writeTxn(() async {
            final hooks = consumable as Hooks;
            final id = manager.db.hooks.put(hooks);
            if (image != null) {
              hooks.image.value = image;
              await hooks.image.save();
            }
            return id;
          }),
    };

    // Perform the operation based on the consumable's type
    final operation = operations[consumable.runtimeType];
    if (operation != null) {
      return operation();
    }

    // Return -1 if the type is not recognized
    throw Exception('No type found');
  }

  @override
  Future<List<Crochet>> getConsumables(CrochetType type) async {
    switch (type) {
      case CrochetType.yarn:
        return manager.db.collection<Yarn>().where().findAll();
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
      case CrochetType.hooks:
        return manager.db.collection<Hooks>().where().findAll();
    }
  }

  Future<List<Yarn>> getYarnByBrand(String brand) async {
    return manager.db
        .collection<Yarn>()
        .filter()
        .brand((q) => q.nameEqualTo(brand))
        .findAll();
  }

  @override
  Future<Crochet?> readConsumable(CrochetType type, int id) {
    switch (type) {
      case CrochetType.yarn:
        return manager.db.yarns.get(id);
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
      case CrochetType.hooks:
        return manager.db.hooks.get(id);
    }
  }

  @override
  Future<int> createOrUpdateBrand(ThreadBrand brand) async {
    return manager.db.writeTxn(() => manager.db.threadBrands.put(brand));
  }

  @override
  Future<List<ThreadBrand>> getThreadBrands() {
    return manager.db
        .collection<ThreadBrand>()
        .where()
        .sortByNameDesc()
        .findAll();
  }

  @override
  Future<int> createOrUpdateThreadType(ThreadType type) {
    return manager.db.writeTxn(() => manager.db.threadTypes.put(type));
  }

  @override
  Future<int> createOrUpdateThreadColor(ThreadColor color) {
    return manager.db.writeTxn(() => manager.db.threadColors.put(color));
  }

  @override
  Future<List<ThreadColor>> getThreadColors() {
    return manager.db.collection<ThreadColor>().where().findAll();
  }

  @override
  Future<List<ThreadType>> getThreadTypes() {
    return manager.db.collection<ThreadType>().where().findAll();
  }

  @override
  Future<Filling?> getFilling() {
    return manager.db.collection<Filling>().where().findFirst();
  }

  @override
  Future<List<Hooks>> getHooks() {
    return manager.db.collection<Hooks>().where().findAll();
  }

  @override
  Future<int> createOrUpdateAnjuImageModel(AnjuImageModel image) {
    return manager.db.writeTxn(() => manager.db.anjuImageModels.put(image));
  }
}
