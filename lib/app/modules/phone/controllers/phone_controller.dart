import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneController extends GetxController {
  //TODO: Implement PhoneController

  final count = 0.obs;
  TextEditingController phone = TextEditingController();
  @override
  void onInit() {
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
