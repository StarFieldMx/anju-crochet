// import 'package:anju/data/models/bill.dart';
import 'package:anju/data/models/bill.dart';
import 'package:anju/data/models/models.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarCrochetDb {
  late final Isar db;
  static Future<IsarCrochetDb> initializeIsarDb() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [
        // CrochetSchema,
        YarnSchema,
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
        AnjuImageModelSchema,
        HooksSchema,
        // IncomeSchema,
        // ExpensesSchema,
      ],
      directory: dir.path,
      inspector: true,
    );
    return IsarCrochetDb()..db = isar;
  }

  Future<void> closeDb() async {
    await db.close();
  }
}
