import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:halaqoh/app/controllers/auth_controller_controller.dart';
import 'package:halaqoh/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';
import 'package:halaqoh/config/warna.dart';

class LoginView extends GetView<LoginController> {
  final controller = Get.put(LoginController());
  final authC = Get.put(AuthControllerController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Obx(() => Scaffold(
          body: Container(
            decoration: BoxDecoration(color: Colors.teal[700]),
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
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  "My ",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal[300]),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  "halaqoh ",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal[400]),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20, top: 20),
                            child: Text(
                              "Email Address",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal[400]),
                            ),
                          ),
                          TextFormField(
                            controller: controller.email,
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.emailAddress,
                            // ignore: prefer_const_constructors
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              labelText: "Enter Your email",
                              labelStyle: TextStyle(color: Colors.teal[200]),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20, top: 20),
                            child: Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal[400]),
                            ),
                          ),
                          TextFormField(
                              controller: controller.password,
                              style: TextStyle(color: Colors.black),
                              cursorColor: Colors.black,
                              obscureText:
                                  controller.showhidepw.value ? false : true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  labelText: "Enter Your Password",
                                  labelStyle:
                                      TextStyle(color: Colors.teal[200]),
                                  border: OutlineInputBorder(),
                                  suffixIcon: IconButton(
                                      onPressed: () => controller.changeEye(),
                                      icon: Icon(
                                        controller.showhidepw.value
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.teal[200],
                                      )))),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () => Get.toNamed(Routes.FORGOT),
                                  child: Text(
                                    "Forgot Password ?",
                                    style: TextStyle(
                                        color: Colors.teal[300], fontSize: 17),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: () => authC.login(controller.email.text,
                                controller.password.text),
                            child: Container(
                              height: tinggi * 0.07,
                              width: lebar * 1.0,
                              decoration: BoxDecoration(
                                color: Colors.teal[400],
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: Text(
                                  "Login",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.teal[700],
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Divider(
                                  color: Colors.teal[200],
                                  height: 1,
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Or Login With",
                                  style: TextStyle(
                                      color: Colors.teal[200], fontSize: 15),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Divider(
                                  color: Colors.teal[200],
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 170,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.teal[700],
                                    ),
                                    onPressed: () => authC.signInWithGoogle(),
                                    child: Row(
                                      children: [
                                        Image.asset("asset/image/Google.png"),
                                        Container(
                                          margin: EdgeInsets.only(left: 35),
                                          child: Text(
                                            "Google",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.teal[200]),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 170,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.teal[700],
                                    ),
                                    onPressed: () =>
                                        Get.offAllNamed(Routes.PHONE),
                                    child: Row(
                                      children: [
                                        Icon(Icons.phone,
                                            color: Colors.teal[200]),
                                        Container(
                                          margin: EdgeInsets.only(left: 35),
                                          child: Text(
                                            "Phone",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.teal[200]),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Don’t have an account?",
                              style: TextStyle(color: Colors.teal[400]),
                            )),
                        TextButton(
                            onPressed: () => Get.toNamed("register"),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.teal[200], fontSize: 13),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
