class Orders {
  final int id;
  final int idAmigurumi;
  final String dueDate;
  final String customer;
  final String? details;
  Orders._(
      {required this.id,
      required this.idAmigurumi,
      required this.dueDate,
      required this.customer,
      this.details});

  static int _lastId = 0;

  factory Orders.unique() {
    _lastId = (_lastId % 200) + 1;
    return Orders._(
      id: _lastId,
      idAmigurumi: 0,
      customer: 'Francisco',
      dueDate: 'ene 20, 2024',
      details:
          'In commodo consectetur non eiusmod laboris excepteur excepteur in ea est velit aute.',
    );
  }
}
