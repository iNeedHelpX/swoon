import 'package:get/get.dart';
import 'package:swoon/controllers/splashscreen_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
