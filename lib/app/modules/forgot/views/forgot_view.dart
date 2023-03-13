import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgot_controller.dart';

class ForgotView extends GetView<ForgotController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ForgotView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ForgotView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
