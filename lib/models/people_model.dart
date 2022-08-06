import 'package:cloud_firestore/cloud_firestore.dart';

class PeopleModel {
  final String name;
  final int price;

  final String image;
  final String area;

  const PeopleModel({
    required this.name,
    required this.price,
    required this.image,
    required this.area,
  });

  static PeopleModel fromSnapshot(DocumentSnapshot snapshot) {
    PeopleModel product = PeopleModel(
        image: snapshot['image'],
        name: snapshot['name'],
        price: snapshot['price'],
        area: snapshot['area']);
    return product;
  }
}
