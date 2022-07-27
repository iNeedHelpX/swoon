import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  final String name;
  final String price;
  final String image;
  final String info;

  const ProductModel({
    required this.name,
    required this.price,
    required this.image,
    required this.info,
  });

  static ProductModel fromSnapshot(DocumentSnapshot snapshot) {
    ProductModel product = ProductModel(
        image: snapshot['image'],
        name: snapshot['name'],
        info: snapshot['info'],
        price: snapshot['price']);
    return product;
  }
}
