import 'package:isar/isar.dart';

enum BillType { balance, stats }

abstract class Bill {
  final double money;
  final String title;
  final String subtitle;
  final int amount;
  final DateTime dueAt;
  const Bill({
    required this.money,
    required this.title,
    required this.subtitle,
    required this.dueAt,
    this.amount = 1,
  });
}

@collection
class Income extends Bill {
  final Id id = Isar.autoIncrement;
  const Income({
    required super.money,
    required super.title,
    required super.subtitle,
    required super.dueAt,
    super.amount,
  });
}

@collection
class Expenses extends Bill {
  final Id id = Isar.autoIncrement;
  const Expenses({
    required super.money,
    required super.title,
    required super.subtitle,
    required super.dueAt,
    super.amount,
  });
}
