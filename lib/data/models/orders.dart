import 'package:isar/isar.dart';

@collection
class Order {
  final Id id = Isar.autoIncrement;
  final int idAmigurumi;
  final DateTime dueDate;
  final String customer;
  final String? details;
  Order({
    // required this.id,
    required this.idAmigurumi,
    required this.dueDate,
    required this.customer,
    this.details,
  });

  factory Order.unique() {
    return Order(
      // id: _lastId,
      idAmigurumi: 0,
      customer: 'Francisco',
      dueDate: DateTime.now(),
      details:
          'In commodo consectetur non eiusmod laboris excepteur excepteur in ea est velit aute.',
    );
  }
}
