// import 'package:anju/data/models/bill.dart';
import 'package:anju/data/models/bill.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/data/models/threads/thread_brand.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:anju/data/models/threads/thread_type.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarCrochetDb {
  late final Isar db;
  static Future<IsarCrochetDb> initializeIsarDb() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [
        // CrochetSchema,
        ThreadSchema,
        FillingSchema,
        SafetyEyesSchema,
        AccessoriesSchema,
        KeychainsSchema,
        PrePackingSchema,
        ThreadColorSchema,
        ThreadTypeSchema,
        ThreadBrandSchema,
        BillSchema,
        AmigurumiSchema,
        AmigurumiImageSchema,
        // IncomeSchema,
        // ExpensesSchema,
      ],
      directory: dir.path,
    );
    return IsarCrochetDb()..db = isar;
  }

  Future<void> closeDb() async {
    await db.close();
  }
}
