import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:halaqoh/app/controllers/auth_controller_controller.dart';
import '../../../../config/warna.dart';
import '../controllers/home_controller.dart';
import 'package:halaqoh/app/routes/app_pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../controllers/halaqoh_controller_controller.dart';

class HomeView extends GetView<HomeController> {
  final authA = Get.put(AuthControllerController());
  final halaqohA = Get.put(HalaqohControllerController());
  final halaqohB = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Colors.black87),
        elevation: 0,
        actions: [
          InkWell(
            onTap: () => authA.logOut(),
            child: Container(
              padding: EdgeInsets.only(right: 25),
              child: Icon(
                Icons.exit_to_app_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black87),
        child: FutureBuilder<QuerySnapshot<Object?>>(
            future: halaqohA.getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                var listData = snapshot.data!.docs;
                return ListView.builder(
                    itemCount: listData.length,
                    itemBuilder: (context, index) => ListTile(
                          onTap: () => Get.toNamed(Routes.UPDATE_HALAQOH,
                              arguments: listData[index]),
                          title: Text(
                            (listData[index].data()
                                as Map<String, dynamic>)['namaSantri'],
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            (listData[index].data()
                                    as Map<String, dynamic>)['pengampuHalaqoh']
                                .toString(),
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              halaqohA.deleteData((listData[index].id));
                            },
                            icon: Icon(
                              CupertinoIcons.trash,
                              color: Colors.redAccent,
                            ),
                          ),
                        ));
              } else {
                return (Center(
                  child: CircularProgressIndicator(),
                ));
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.CREATE_HALAQOH),
        child: Icon(Icons.add),
      ),
    );
  }
}
