import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateHalaqohController extends GetxController {
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
    dariAyat.text =
        (data.data() as Map<String, dynamic>)['dariAyat'].toString();
    sampaiAyat.text =
        (data.data() as Map<String, dynamic>)['sampaiAyat'].toString();
    dariSurat.text = (data.data() as Map<String, dynamic>)['dariSurat'];
    sampaiSurat.text = (data.data() as Map<String, dynamic>)['sampaiSurat'];
    namaSantri.text = (data.data() as Map<String, dynamic>)['namaSantri'];
    pengampuHalaqoh.text =
        (data.data() as Map<String, dynamic>)['pengampuHalaqoh'];
    tanggalHalaqoh.text =
        (data.data() as Map<String, dynamic>)['tanggalHalaqoh'];
    waktuHalaqoh.text = (data.data() as Map<String, dynamic>)['waktuHalaqoh'];
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
