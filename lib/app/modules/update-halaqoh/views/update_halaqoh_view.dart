import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:halaqoh/app/modules/home/controllers/home_controller.dart';
import 'package:halaqoh/config/warna.dart';
import '../controllers/update_halaqoh_controller.dart';
import 'package:halaqoh/app/controllers/halaqoh_controller_controller.dart';

class UpdateHalaqohView extends GetView<UpdateHalaqohController> {
  final halaqohA = Get.put(HalaqohControllerController());
  final halaqohB = Get.put(HomeController());
  final data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.teal[700]),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                    width: lebar,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.teal[400],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Center(
                      child: Text(
                        " Update Halaqoh ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.teal[700]),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 50),
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Column(
                      children: [
                        CustomInput(
                            controller: controller.dariAyat,
                            label: 'Dari Ayat',
                            hint: 'Masukkan Ayat Surah',
                            obscure: false),
                        SizedBox(
                          height: 20,
                        ),
                        CustomInput(
                            controller: controller.sampaiAyat,
                            label: 'Sampai Ayat',
                            hint: 'Masukkan Ayat Surah',
                            obscure: false),
                        SizedBox(
                          height: 20,
                        ),
                        CustomInput(
                            controller: controller.dariSurat,
                            label: 'Dari Surat',
                            hint: 'Masukkan Nama Surah',
                            obscure: false),
                        SizedBox(
                          height: 20,
                        ),
                        CustomInput(
                            controller: controller.sampaiSurat,
                            label: 'Sampai Surat',
                            hint: 'Masukkan Nama Surah',
                            obscure: false),
                        SizedBox(
                          height: 20,
                        ),
                        CustomInput(
                            controller: controller.namaSantri,
                            label: 'Nama Santri',
                            hint: 'Masukkan Nama Santri',
                            obscure: false),
                        SizedBox(
                          height: 20,
                        ),
                        CustomInput(
                            controller: controller.pengampuHalaqoh,
                            label: 'Nama Pengampuh Halaqoh',
                            hint: 'Masukkan Nama Pengampuh Halaqoh',
                            obscure: false),
                        SizedBox(
                          height: 20,
                        ),
                        CustomInput(
                            controller: controller.tanggalHalaqoh,
                            label: 'Tanggal Halaqoh',
                            hint: 'Masukkan Tanggal Halaqoh',
                            obscure: false),
                        SizedBox(
                          height: 20,
                        ),
                        CustomInput(
                            controller: controller.waktuHalaqoh,
                            label: 'Waktu Halaqoh',
                            hint: 'Masukkan Waktu Halaqoh',
                            obscure: false),
                      ],
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  margin: EdgeInsets.only(top: 40),
                  child: InkWell(
                    onTap: () {
                      halaqohA.updateHalaqoh(
                          data?.id,
                          int.parse(controller.dariAyat.text),
                          int.parse(controller.sampaiAyat.text),
                          controller.dariSurat.text,
                          controller.sampaiSurat.text,
                          controller.namaSantri.text,
                          controller.pengampuHalaqoh.text,
                          controller.tanggalHalaqoh.text,
                          controller.waktuHalaqoh.text);

                      // onTap: () => sliderC.updateData(listData[index].id,
                      //     true, 'baru diupdate', 'mahiru mahiru mahiru'),
                    },
                    child: Container(
                      width: lebar,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.teal[400]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Update Halaqoh',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.teal[700],
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

Widget CustomInput({label, controller, obscure, hint, icon, initValue}) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        ),
      ),
      Container(
        child: TextFormField(
            initialValue: initValue,
            controller: controller,
            obscureText: obscure,
            decoration: InputDecoration(
              labelStyle: TextStyle(
                fontFamily: "Poppins",
                color: Colors.teal[400],
                fontSize: 19,
              ),
              hintText: hint,
              hintStyle: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.teal[400],
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 18,
              ),
              suffixIcon: icon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: bgAbu, width: 1),
                gapPadding: 5,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 27, 27, 27), width: 1),
                gapPadding: 5,
              ),
            )),
      ),
    ],
  );
}
