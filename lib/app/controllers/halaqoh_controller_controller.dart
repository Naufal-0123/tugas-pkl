import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:halaqoh/app/routes/app_pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class HalaqohControllerController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;
  String url = "";
  File? path;

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference Halaqoh = firestore.collection('Halaqoh');
    return await Halaqoh.get();
  }

  updateHalaqoh(
      String id,
      int dariAyat,
      int sampaiAyat,
      String dariSurat,
      String sampaiSurat,
      String namaSantri,
      String pengampuHalaqoh,
      String tanggalHalaqoh,
      String waktuHalaqoh) async {
    try {
      final halaqohData = {
        "dariAyat": dariAyat,
        "sampaiAyat": sampaiAyat,
        "dariSurat": dariSurat,
        "sampaiSurat": sampaiSurat,
        "namaSantri": namaSantri,
        "pengampuHalaqoh": pengampuHalaqoh,
        "tanggalHalaqoh": tanggalHalaqoh,
        "waktuHalaqoh": waktuHalaqoh,
      };

      DocumentReference Halaqoh = firestore.collection('Halaqoh').doc(id);
      await Halaqoh.update(halaqohData);

      Get.offNamed(Routes.HOME);
      Get.defaultDialog(
        title: 'Alert',
        middleText: 'berhasil mengupdate data',
        backgroundColor: Colors.black87,
        titleStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        middleTextStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      );
    } catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal mengupdate data');
      print(e);
    }
  }

  addData(
      int dariAyat,
      int sampaiAyat,
      String dariSurat,
      String sampaiSurat,
      String namaSantri,
      String PengampuHalaqoh,
      String tanggalHalaqoh,
      String waktuHalaqoh) async {
    CollectionReference Halaqoh = firestore.collection('Halaqoh');
    final halaqohData = {
      "dariAyat": dariAyat,
      "sampaiAyat": sampaiAyat,
      "dariSurat": dariSurat,
      "sampaiSurat": sampaiSurat,
      "namaSantri": namaSantri,
      "pengampuHalaqoh": PengampuHalaqoh,
      "tanggalHalaqoh": tanggalHalaqoh,
      "waktuHalaqoh": waktuHalaqoh,
    };
// Add a new document with a generated ID
    try {
      await Halaqoh.add(halaqohData).then((DocumentReference doc) {
        print('DocumentSnapshot added with ID: ${doc.id}');
        Get.offNamed(Routes.HOME);
        Get.defaultDialog(
          title: 'Alert',
          middleText: 'berhasil menambahkan data',
          backgroundColor: Colors.black87,
          titleStyle:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          middleTextStyle:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        );
      });
    } catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal menambahkan data');
    }
  }

  deleteData(String id) async {
    try {
      DocumentReference Halaqoh = firestore.collection('Halaqoh').doc(id);
      await Halaqoh.delete();
      Get.offAllNamed(Routes.HOME);
      Get.defaultDialog(
        title: 'Alert',
        middleText: 'berhasil mendelete data',
        backgroundColor: Colors.black87,
        titleStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        middleTextStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      );
    } catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal mendelete data');
      print(e);
    }
  }
}
