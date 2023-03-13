import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateHalaqohController extends GetxController {
 final data = Get.arguments;
  final active = true.obs;
  changeActivation() => active.toggle();

  TextEditingController dariAyat = TextEditingController();
  TextEditingController sampaiAyat = TextEditingController();
  TextEditingController dariSurat = TextEditingController();
  TextEditingController sampaiSurat = TextEditingController();
  TextEditingController namaSantri = TextEditingController();
  TextEditingController pengampuHalaqoh = TextEditingController();
  TextEditingController tanggalHalaqoh = TextEditingController();
  TextEditingController waktuHalaqoh = TextEditingController();

  final count = 0.obs;
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
