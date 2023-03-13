import 'package:get/get.dart';

import '../controllers/create_halaqoh_controller.dart';

class CreateHalaqohBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateHalaqohController>(
      () => CreateHalaqohController(),
    );
  }
}
