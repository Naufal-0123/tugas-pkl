import 'dart:ffi';
import 'dart:io';
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

      Get.defaultDialog(title: 'Alert', middleText: 'berhasil mengupdate data');
      Get.offNamed(Routes.HOME);
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
        Get.defaultDialog(
            title: 'Alert', middleText: 'berhasil menambahkan data');
        Get.offNamed(Routes.HOME);
      });
    } catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal menambahkan data');
    }
  }

  deleteData(String id) async {
    try {
      DocumentReference Halaqoh = firestore.collection('Halaqoh').doc(id);
      await Halaqoh.delete();
      Get.defaultDialog(title: 'Alert', middleText: 'berhasil mendelete data');
      return Get.offAllNamed(Routes.HOME);
    } catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal mendelete data');
      print(e);
    }
  }
}
