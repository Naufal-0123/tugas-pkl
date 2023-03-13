import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_halaqoh_controller.dart';
import 'package:halaqoh/app/modules/home/controllers/home_controller.dart';
import 'package:halaqoh/config/warna.dart';
import 'package:halaqoh/app/controllers/halaqoh_controller_controller.dart';

class CreateHalaqohView extends GetView<CreateHalaqohController> {
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
                        " Create Halaqoh ",
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
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 20,
                          ),
                          child: Text(
                            "Dari Ayat",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[400]),
                          ),
                        ),
                        TextFormField(
                          controller: controller.dariAyat,
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            labelText: "Masukkan Ayat Surah",
                            labelStyle: TextStyle(color: Colors.teal[200]),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20, top: 20),
                          child: Text(
                            "Sampai Ayat",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[400]),
                          ),
                        ),
                        TextFormField(
                          controller: controller.sampaiAyat,
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            labelText: "Masukkan Ayat Surah",
                            labelStyle: TextStyle(color: Colors.teal[200]),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20, top: 20),
                          child: Text(
                            "Dari Surat",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[400]),
                          ),
                        ),
                        TextFormField(
                          controller: controller.dariSurat,
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            labelText: "Masukkan Nama Surah",
                            labelStyle: TextStyle(color: Colors.teal[200]),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20, top: 20),
                          child: Text(
                            "Sampai Surat",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[400]),
                          ),
                        ),
                        TextFormField(
                          controller: controller.sampaiSurat,
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            labelText: "Masukkan Nama Surah",
                            labelStyle: TextStyle(color: Colors.teal[200]),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20, top: 20),
                          child: Text(
                            "Nama Santri",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[400]),
                          ),
                        ),
                        TextFormField(
                          controller: controller.namaSantri,
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            labelText: "Masukkan Nama Santri",
                            labelStyle: TextStyle(color: Colors.teal[200]),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20, top: 20),
                          child: Text(
                            "Nama Pengampuh Halaqoh",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[400]),
                          ),
                        ),
                        TextFormField(
                          controller: controller.pengampuHalaqoh,
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            labelText: "Masukkan Nama Pengampuh Halaqoh",
                            labelStyle: TextStyle(color: Colors.teal[200]),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20, top: 20),
                          child: Text(
                            "Tanggal Halaqoh",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[400]),
                          ),
                        ),
                        TextFormField(
                          controller: controller.tanggalHalaqoh,
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            labelText: "Masukkan Tanggal Halaqoh",
                            labelStyle: TextStyle(color: Colors.teal[200]),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20, top: 20),
                          child: Text(
                            "Waktu Halaqoh",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[400]),
                          ),
                        ),
                        TextFormField(
                          controller: controller.waktuHalaqoh,
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            labelText: "Masukkan Waktu Halaqoh",
                            labelStyle: TextStyle(color: Colors.teal[200]),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  margin: EdgeInsets.only(top: 40),
                  child: InkWell(
                    onTap: () {
                      halaqohA.addData(
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
                            'Create Halaqoh',
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
