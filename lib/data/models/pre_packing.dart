import 'package:cloud_firestore/cloud_firestore.dart';

class PrePacking {
  String name;
  int stock;

  PrePacking._(this.name, this.stock);
  factory PrePacking.fromJson(Map<String, dynamic> json) {
    return PrePacking._(
      json['name'] as String,
      json['stock'] as int,
    );
  }
  Future<void> uploadJson(
      FirebaseFirestore firestore, String collection) async {
    await firestore.collection(collection).add({
      'name': name,
      'stock': stock,
    });
  }
}
