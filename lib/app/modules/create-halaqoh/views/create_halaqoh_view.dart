import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_halaqoh_controller.dart';
import 'package:halaqoh/app/modules/home/controllers/home_controller.dart';
import 'package:halaqoh/config/warna.dart';
import 'package:halaqoh/app/controllers/halaqoh_controller_controller.dart';

class MyController extends GetxController {
  var selectedDate = DateTime.now().obs;

  void onDateSelected(DateTime newDate) {
    selectedDate.value = newDate;
  }
}

class CreateHalaqohView extends GetView<CreateHalaqohController> {
  final MyController myController = Get.put(MyController());
  final TextEditingController tanggalHalaqoh = TextEditingController();
  final halaqohA = Get.put(HalaqohControllerController());
  final createC = Get.put(CreateHalaqohController());
  final halaqohB = Get.put(HomeController());
  final data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Obx(() => SafeArea(
            child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                        width: lebar,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5))),
                        child: Center(
                          child: Text(
                            createC.judul.value,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 10, top: 10, right: 330),
                              child: Text(
                                "Dari Ayat",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            TextFormField(
                              controller: controller.dariAyat,
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.emailAddress,
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: "Masukkan Ayat Surah",
                                labelStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 10, top: 10, right: 310),
                              child: Text(
                                "Sampai Ayat",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            TextFormField(
                              controller: controller.sampaiAyat,
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.emailAddress,
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: "Masukkan Ayat Surah",
                                labelStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 10, top: 10, right: 330),
                              child: Text(
                                "Dari Surat",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: <BoxShadow>[]),
                              child: DropdownButton(
                                items: createC.halaqoh.map((String value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  createC.change(value);
                                  print(value);
                                },
                                value: createC.surat.value == ""
                                    ? null
                                    : createC.surat.value,
                                hint: Text("Dari Surat"),
                                isExpanded: true,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                                dropdownColor: Colors.white,
                                iconEnabledColor: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 10, top: 10, right: 300),
                              child: Text(
                                "Sampai Surat",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: <BoxShadow>[]),
                              child: DropdownButton(
                                items: createC.halaqoh2.map((String value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  createC.change1(value);
                                  print(value);
                                },
                                value: createC.surat2.value == ""
                                    ? null
                                    : createC.surat2.value,
                                hint: Text("Sampai Surat"),
                                isExpanded: true,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                                dropdownColor: Colors.white,
                                iconEnabledColor: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 10, top: 10, right: 310),
                              child: Text(
                                "Nama Santri",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            TextFormField(
                              controller: controller.namaSantri,
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.emailAddress,
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: "Masukkan Nama Santri",
                                labelStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 10, top: 10, right: 180),
                              child: Text(
                                "Nama Pengampuh Halaqoh",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            TextFormField(
                              controller: controller.pengampuHalaqoh,
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.emailAddress,
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: "Masukkan Nama Pengampuh Halaqoh",
                                labelStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 10, top: 10, right: 270),
                              child: Text(
                                "Tanggal Halaqoh",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            TextFormField(
                              controller: controller.tanggalHalaqoh,
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: "Masukkan Tanggal Halaqoh",
                                labelStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(),
                              ),
                              readOnly: true,
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: myController.selectedDate.value,
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2030),
                                ).then((newDate) {
                                  if (newDate != null) {
                                    myController.onDateSelected(newDate);
                                    tanggalHalaqoh.text = myController
                                        .selectedDate.value
                                        .toString();
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 10, top: 10, right: 290),
                              child: Text(
                                "Waktu Halaqoh",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: <BoxShadow>[]),
                              child: DropdownButton(
                                items: createC.jam.map((String value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  createC.change2(value);
                                  print(value);
                                },
                                value: createC.waktu.value == ""
                                    ? null
                                    : createC.waktu.value,
                                hint: Text("Waktu Halaqoh"),
                                isExpanded: true,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                                dropdownColor: Colors.white,
                                iconEnabledColor: Colors.white,
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
                        },
                        child: Container(
                          width: lebar,
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Create Halaqoh',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
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
        )));
  }
}

// Widget CustomInput({label, controller, obscure, hint, icon, initValue}) {
//   return Column(
//     children: [
//       Container(
//         margin: EdgeInsets.only(bottom: 5),
//         child: Align(
//           alignment: Alignment.centerLeft,
//           child: Text(label,
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
//         ),
//       ),
//       Container(
//         child: TextFormField(
//             initialValue: initValue,
//             controller: controller,
//             obscureText: obscure,
//             decoration: InputDecoration(
//               labelStyle: TextStyle(
//                 fontFamily: "Poppins",
//                 color: Colors.teal[400],
//                 fontSize: 19,
//               ),
//               hintText: hint,
//               hintStyle: TextStyle(
//                   fontFamily: "Poppins",
//                   color: Colors.teal[400],
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400),
//               floatingLabelBehavior: FloatingLabelBehavior.always,
//               contentPadding: const EdgeInsets.symmetric(
//                 horizontal: 20,
//                 vertical: 18,
//               ),
//               suffixIcon: icon,
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6),
//                 borderSide: BorderSide(color: bgAbu, width: 1),
//                 gapPadding: 5,
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6),
//                 borderSide: const BorderSide(
//                     color: Color.fromARGB(255, 27, 27, 27), width: 1),
//                 gapPadding: 5,
//               ),
//             )),
//       ),
//     ],
//   );
// }
