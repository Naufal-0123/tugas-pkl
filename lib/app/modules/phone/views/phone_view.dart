import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../config/warna.dart';
import '../../../controllers/auth_controller_controller.dart';
import '../controllers/phone_controller.dart';

class PhoneView extends GetView<PhoneController> {
  final authA = Get.put(AuthControllerController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: tinggi,
        decoration: BoxDecoration(color: Colors.black87),
        child: SingleChildScrollView(
          child: Container(
            width: lebar,
            padding: EdgeInsets.fromLTRB(25, 50, 25, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: tinggi * 0.85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Login With Phone Number",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Please enter your telephone number to login to the next page",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20, top: 20),
                        child: Text(
                          "Mobile Number",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.emailAddress,
                        controller: controller.phone,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: "Enter Your mobile",
                          labelStyle: TextStyle(color: Colors.white),
                          prefixIcon: Container(
                            width: lebar * 0.13,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  child: Text("+62",
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white)),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                  height: tinggi * 0.04,
                                  child: VerticalDivider(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () => authA.verifyPhone(controller.phone.text),
                        child: Container(
                          height: tinggi * 0.07,
                          width: lebar * 1.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                            child: Text(
                              "Send OTP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
