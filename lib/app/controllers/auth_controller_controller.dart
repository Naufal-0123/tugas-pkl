import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:halaqoh/app/routes/app_pages.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthControllerController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> streamAuthStatus() => auth.authStateChanges();
  String codeVerify = "";

  login(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      Get.offAllNamed(Routes.HOME);
      Get.snackbar(
          "Success", "Congratulations, you have successfully logged in");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar("Error", "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        Get.snackbar("Error", "Wrong password provided for that user.");
      }
    }
  }

  logOut() {
    Get.defaultDialog(
        title: "Are You Sure!",
        middleText: "logout this application ?",
        backgroundColor: Colors.black87,
        titleStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        middleTextStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        confirm: ElevatedButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Get.offAllNamed(Routes.LOGIN);
            },
            child: Text("Yes")),
        cancel: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () => Get.back(),
            child: Text("No")));
  }

  register(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailAddress, password: password);
      credential.user?.sendEmailVerification();
      Get.offAllNamed(Routes.LOGIN);
      Get.snackbar(
          "Success", "congratulations, you have successfully registered");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar("Error", "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        Get.snackbar("Error", "Wrong password provided for that user.");
      }
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    Get.offAllNamed(Routes.HOME);
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  verifyPhone(String nomor) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+62${nomor}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) => {
                if (value.user != null) {Get.toNamed(Routes.HOME)}
              });
        },
        verificationFailed: (FirebaseAuthException e) {
          Get.defaultDialog(title: 'Alert', middleText: 'Error ${e}');
        },
        codeSent: (String verificationId, int? resendToken) {
          codeVerify = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          codeVerify = verificationId;
        },
        timeout: Duration(seconds: 60));
    Get.toNamed(Routes.VEIFY_OTP, parameters: {"phone": nomor});
  }

  checkOTP(String sms) async {
    try {
      await auth
          .signInWithCredential(PhoneAuthProvider.credential(
              verificationId: codeVerify, smsCode: sms))
          .then((value) {
        if (value.user != null) {
          Get.toNamed(Routes.HOME);
        }
      });
    } catch (e) {
      Get.defaultDialog(
          title: "Alert", middleText: "kode verifikasi anda salah ");
    }
  }

  resetPassword(String emailAddress) async {
    try {
      final Credential = await auth.sendPasswordResetEmail(email: emailAddress);
      Get.toNamed(Routes.CHECK_EMAIL);
    } on FirebaseAuthException catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal merubah kata sandi');
    }
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
