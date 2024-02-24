import 'package:anju/data/models/crochet.dart';
import 'package:anju/data/models/pre_packing.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String collectionMaterials = 'anju_crochet_material';
  Future<void> addCrochet(Crochet material) async {
    // material is Thread
    await material.uploadJson(firestore, collectionMaterials);
  }

  Future<void> addPrepacking(PrePacking packing) async {
    // material is Thread
    await packing.uploadJson(firestore, collectionMaterials);
  }
}
