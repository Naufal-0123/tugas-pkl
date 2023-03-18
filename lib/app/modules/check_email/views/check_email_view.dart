import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/check_email_controller.dart';

class CheckEmailView extends GetView<CheckEmailController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: tinggi,
        decoration: BoxDecoration(color: Colors.black87),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Icon(
                      Icons.mark_email_read,
                      size: 100,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "CHECK EMAIL",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "please check your email",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // Back(),
                    Divider(
                      height: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
