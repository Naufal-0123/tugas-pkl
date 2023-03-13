import 'package:get/get.dart';
import '../../../controllers/halaqoh_controller_controller.dart';
class HomeController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
     HalaqohControllerController().getData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
