import 'package:halaqoh/app/controllers/auth_controller_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controller = Get.put(AuthControllerController());
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: controller.streamAuthStatus(),
        builder: (context, snapshot) {
          print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.active) {
            print(snapshot.data);
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Application",
              initialRoute:
                  snapshot.data != null && snapshot.data?.emailVerified == true
                      ? Routes.HOME
                      : Routes.LOGIN,
              getPages: AppPages.routes,
            );
          } else {
            return MaterialApp(
              home: Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }
        });
  }
}
