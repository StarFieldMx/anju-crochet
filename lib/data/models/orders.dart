class Order {
  final int id;
  final int idAmigurumi;
  final String dueDate;
  final String customer;
  final String? details;
  Order._(
      {required this.id,
      required this.idAmigurumi,
      required this.dueDate,
      required this.customer,
      this.details});

  static int _lastId = 0;

  factory Order.unique() {
    _lastId = (_lastId % 200) + 1;
    return Order._(
      id: _lastId,
      idAmigurumi: 0,
      customer: 'Francisco',
      dueDate: 'ENE 20, 2024',
      details:
          'In commodo consectetur non eiusmod laboris excepteur excepteur in ea est velit aute.',
    );
  }
}
