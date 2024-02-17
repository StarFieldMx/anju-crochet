// TODO: IMPROVE
class AnjuMaterial {
  final int id;
  final String name;

  AnjuMaterial({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  static AnjuMaterial fromMap(Map<String, dynamic> map) {
    return AnjuMaterial(
      id: map['id'],
      name: map['name'],
    );
  }
}
