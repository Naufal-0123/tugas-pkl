import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../controllers/auth_controller_controller.dart';
import '../controllers/veify_otp_controller.dart';

class VeifyOTPView extends GetView<VeifyOtpController> {
  final authA = Get.put(AuthControllerController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: TextStyle(
          fontSize: 20, color: Colors.teal[400], fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 107, 165, 212)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromARGB(255, 107, 165, 212)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Colors.teal[400],
      ),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.teal[700]),
        child: Container(
            padding: EdgeInsets.fromLTRB(30, 60, 30, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: tinggi * 0.87,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Verification",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200]),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 300,
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "OTP Code Has been succesfully sent on this phone number +62",
                              style: TextStyle(color: Colors.teal[200]),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Pinput(
                                onSubmitted: (pin) => authA.checkOTP(pin),
                                length: 6,
                                defaultPinTheme: defaultPinTheme,
                                focusedPinTheme: focusedPinTheme,
                                submittedPinTheme: submittedPinTheme,
                                pinputAutovalidateMode:
                                    PinputAutovalidateMode.onSubmit,
                                showCursor: true,
                                // ignore: avoid_print
                                onCompleted: (pin) => {},
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
