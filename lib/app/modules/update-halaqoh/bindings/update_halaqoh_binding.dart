import 'package:get/get.dart';

import '../controllers/update_halaqoh_controller.dart';

class UpdateHalaqohBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateHalaqohController>(
      () => UpdateHalaqohController(),
    );
  }
}
