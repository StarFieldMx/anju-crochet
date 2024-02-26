enum BillType { balance, stats }

abstract class Bill {
  final double money;
  final String title;
  final String subtitle;
  final int amount;
  final DateTime date;
  const Bill({
    required this.money,
    required this.title,
    required this.subtitle,
    required this.date,
    this.amount = 1,
  });
}

class Income extends Bill {
  const Income({
    required super.money,
    required super.title,
    required super.subtitle,
    required super.date,
    super.amount,
  });
}

class Expenses extends Bill {
  const Expenses({
    required super.money,
    required super.title,
    required super.subtitle,
    required super.date,
    super.amount,
  });
}
