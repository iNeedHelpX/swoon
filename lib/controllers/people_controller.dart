import 'package:get/get.dart';
import 'package:swoon/controllers/firebase_db.dart';
import 'package:swoon/models/people_model.dart';

class PeopleController extends GetxController {
  static PeopleController instance = Get.find();
  RxList<PeopleModel> people = RxList<PeopleModel>([]);
  final products = <PeopleModel>[].obs;
  @override
  void onInit() {
    products.bindStream(FirestoreDB().getPeople());
    super.onInit();
  }
}
