import 'package:get/get.dart';

import '../controllers/veify_controller.dart';

class VeifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VeifyController>(
      () => VeifyController(),
    );
  }
}
