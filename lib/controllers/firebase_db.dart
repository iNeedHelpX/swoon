import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:swoon/models/people_model.dart';
import 'package:swoon/models/product_model.dart';

//for the simple data structure i have up currently
class FirestoreDB {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Stream<List<ProductModel>> getItemProducts() {
    return _firebaseFirestore.collection('items').snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => ProductModel.fromSnapshot(doc))
          .toList();
    });
  }

  Stream<List<PeopleModel>> getPeople() {
    return _firebaseFirestore.collection('people').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => PeopleModel.fromSnapshot(doc)).toList();
    });
  }
}
