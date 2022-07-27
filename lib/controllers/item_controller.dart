import 'package:get/get.dart';
import 'package:swoon/controllers/firebase_db.dart';
import 'package:swoon/models/product_model.dart';

class ItemController extends GetxController {
  final products = <ProductModel>[].obs;
  @override
  void onInit() {
    products.bindStream(FirestoreDB().getItemProducts());
    super.onInit();
  }
}
