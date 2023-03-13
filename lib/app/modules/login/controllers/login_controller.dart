import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final showhidepw = false.obs;
  changeEye() => showhidepw.toggle();
  final count = 0.obs;
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

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
