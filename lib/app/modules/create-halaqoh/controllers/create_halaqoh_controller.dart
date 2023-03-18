import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateHalaqohController extends GetxController {
  final data = Get.arguments;
  final active = true.obs;
  changeActivation() => active.toggle();

  TextEditingController dariAyat = TextEditingController();
  TextEditingController sampaiAyat = TextEditingController();
  // TextEditingController dariSurat = TextEditingController();
  // TextEditingController sampaiSurat = TextEditingController();
  TextEditingController namaSantri = TextEditingController();
  TextEditingController pengampuHalaqoh = TextEditingController();
  TextEditingController tanggalHalaqoh = TextEditingController();
  // TextEditingController waktuHalaqoh = TextEditingController();

  RxString surat = "".obs;
  RxString surat2 = "".obs;
  RxString waktu = "".obs;
  RxString judul = "Create Halaqoh".obs;
  List<String> jam = ["Pagi", "Malam"];
  List<String> halaqoh = [
    "Al Fatihah",
    "Al Baqarah",
    "Ali Imran",
    "An Nisa",
    "Al Maidah",
    "Al An'am",
    "Al A'raf",
    "Al Anfal",
    "At Taubah",
    "Yunus",
    "Hud",
    "Yusuf",
    "Ar Ra'd",
    "Ibrahim",
    "Al Hijr",
    "An Nahl",
    "Al Isra",
    "Al Kahf",
    "Maryam",
    "Taha",
    "Al Anbiya",
    "Al Hajj",
    "Al Mu'minun",
    "An Nur",
    "Al Furqan",
    "Asy Syu'ara",
    "An Naml",
    "Al Qasas",
    "Al Ankabut",
    "Ar Rum",
    "Luqman",
    "As Sajdah",
    "Al Ahzab",
    "Saba",
    "Fatir",
    "Ya sin",
    "As Saffat",
    "Sad",
    "Az Zumar",
    "Ghafir",
    "Fussilat",
    "Asy Syura",
    "Az Zukhruf",
    "Ad Dukhan",
    "Al Jasiyah",
    "Al Ahqaf",
    "Muhammad",
    "Al Fath",
    "Al Hujrat",
    "Qaf",
    "Az Zariyat",
    "At Tur",
    "An Najm",
    "Al Qamar",
    "Ar Rahman",
    "Al Waqiah",
    "Al Hadid",
    "Al Mujadalah",
    "Al Hasyr",
    "Al Mumtahanah",
    "As Saff",
    "Al Jumuah",
    "Al Munafiqun",
    "At Tagabun",
    "At Talaq",
    "At Tahrim",
    "Al Mulk",
    "Al Qalam",
    "Al Haqqah",
    "Al Maarij",
    "Nuh",
    "Al Jinn",
    "Al Muzammil",
    "Al Muddassir",
    "Al Qiyamah",
    "Al Insan",
    "Al Mursalat",
    "An Naba",
    "An Naziat",
    "Abasa",
    "At Takwir",
    "Al Infitar",
    "Al mutaffifin",
    "Al Insyiqaq",
    "Al Buruj",
    "At Tariq",
    "Al A'la",
    "Al Ghasyiyah",
    "Al Fajr",
    "Al Balad",
    "Asy Syams",
    "Al Lail",
    "Ad Duha",
    "Al Insyirah",
    "At Tin",
    "Al Alaq",
    "Al Qadr",
    "Al Bayyinah",
    "Az Zalzalah",
    "Al Adiyat",
    "Al Qariah",
    "At Takasur",
    "Al Asr",
    "Al Humazah",
    "Al Fil",
    "Quraisy",
    "Al Ma'un",
    "Al Kautsar",
    "Al Kafirun",
    "An Nasr",
    "Al Lahab",
    "Al Ikhlas",
    "Al Falaq",
    "An Nas"
  ];

  List<String> halaqoh2 = [
    "Al Fatihah",
    "Al Baqarah",
    "Ali Imran",
    "An Nisa",
    "Al Maidah",
    "Al An'am",
    "Al A'raf",
    "Al Anfal",
    "At Taubah",
    "Yunus",
    "Hud",
    "Yusuf",
    "Ar Ra'd",
    "Ibrahim",
    "Al Hijr",
    "An Nahl",
    "Al Isra",
    "Al Kahf",
    "Maryam",
    "Taha",
    "Al Anbiya",
    "Al Hajj",
    "Al Mu'minun",
    "An Nur",
    "Al Furqan",
    "Asy Syu'ara",
    "An Naml",
    "Al Qasas",
    "Al Ankabut",
    "Ar Rum",
    "Luqman",
    "As Sajdah",
    "Al Ahzab",
    "Saba",
    "Fatir",
    "Ya sin",
    "As Saffat",
    "Sad",
    "Az Zumar",
    "Ghafir",
    "Fussilat",
    "Asy Syura",
    "Az Zukhruf",
    "Ad Dukhan",
    "Al Jasiyah",
    "Al Ahqaf",
    "Muhammad",
    "Al Fath",
    "Al Hujrat",
    "Qaf",
    "Az Zariyat",
    "At Tur",
    "An Najm",
    "Al Qamar",
    "Ar Rahman",
    "Al Waqiah",
    "Al Hadid",
    "Al Mujadalah",
    "Al Hasyr",
    "Al Mumtahanah",
    "As Saff",
    "Al Jumuah",
    "Al Munafiqun",
    "At Tagabun",
    "At Talaq",
    "At Tahrim",
    "Al Mulk",
    "Al Qalam",
    "Al Haqqah",
    "Al Maarij",
    "Nuh",
    "Al Jinn",
    "Al Muzammil",
    "Al Muddassir",
    "Al Qiyamah",
    "Al Insan",
    "Al Mursalat",
    "An Naba",
    "An Naziat",
    "Abasa",
    "At Takwir",
    "Al Infitar",
    "Al mutaffifin",
    "Al Insyiqaq",
    "Al Buruj",
    "At Tariq",
    "Al A'la",
    "Al Ghasyiyah",
    "Al Fajr",
    "Al Balad",
    "Asy Syams",
    "Al Lail",
    "Ad Duha",
    "Al Insyirah",
    "At Tin",
    "Al Alaq",
    "Al Qadr",
    "Al Bayyinah",
    "Az Zalzalah",
    "Al Adiyat",
    "Al Qariah",
    "At Takasur",
    "Al Asr",
    "Al Humazah",
    "Al Fil",
    "Quraisy",
    "Al Ma'un",
    "Al Kautsar",
    "Al Kafirun",
    "An Nasr",
    "Al Lahab",
    "Al Ikhlas",
    "Al Falaq",
    "An Nas"
  ];

  change(value) {
    surat.value = value;
  }

  change1(value) {
    surat2.value = value;
  }

  change2(value) {
    waktu.value = value;
  }

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
