import 'package:anju/data/models/models.dart';
import 'package:isar/isar.dart';
part 'bill.g.dart';

enum BillTypeScreen { balance, stats }

enum BillingType { expenses, incomes }

@collection
class Bill {
  Id id = Isar.autoIncrement;
  late double money;
  late String title;
  String? subtitle;
  late int amount;
  @enumerated
  late BillingType type;

  // A reference to the Amigurumi
  final amigurumi = IsarLink<Amigurumi>();

  // References to different types of Crochet materials
  final thread = IsarLink<Thread>();
  final filling = IsarLink<Filling>();
  final safetyEye = IsarLink<SafetyEyes>();
  final accessory = IsarLink<Accessories>();
  final keychains = IsarLink<Keychains>();
  final prePacking = IsarLink<PrePacking>();

  /// UTC
  late DateTime dueAt;
}
