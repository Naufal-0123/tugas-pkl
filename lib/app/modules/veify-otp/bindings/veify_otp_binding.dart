import 'package:get/get.dart';

import '../controllers/veify_otp_controller.dart';

class VeifyOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VeifyOtpController>(
      () => VeifyOtpController(),
    );
  }
}
