// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import '../controllers/veify_controller.dart';

// class VeifyView extends GetView<VeifyController> {
//   @override
//   Widget build(BuildContext context) {
//     double tinggi = MediaQuery.of(context).size.height;
//     double lebar = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(30),
//           child: Center(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Container(
//                     height: tinggi * 0.85,
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 150,
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(top: 10),
//                           width: 150,
//                           height: 150,
//                           decoration: BoxDecoration(
//                               color: Colors.black26,
//                               borderRadius: BorderRadius.circular(8)),
//                           child: Image.asset(
//                             "asset/image/Group 2.png",
//                             fit: BoxFit.none,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 25,
//                         ),
//                         Text(
//                           "Check Your Email",
//                           style: TextStyle(fontSize: 40, color: Colors.black),
//                         ),
//                         SizedBox(
//                           height: 25,
//                         ),
//                         Text(
//                           "We have sent a password recover instructions to your email.",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(fontSize: 25, color: Colors.black45),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         InkWell(
//                           onTap: () async { 
//                             await LaunchApp.openApp( 
//                               androidPackageName: 'com.google.android.gm', 
//                               iosUrlScheme: 'googlegmail://', 
//                               appStoreLink: 
//                                   'itms-apps://apps.apple.com/us/app/gmail-email-by-google/id422689480', 
//                             ); 
//                           },
//                           child: Container(
//                             height: tinggi * 0.07,
//                             width: 225,
//                             decoration: BoxDecoration(
//                                 color: bgLogin,
//                                 borderRadius: BorderRadius.circular(6)),
//                             child: Center(
//                               child: Text(
//                                 "Open Email App",
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () => Get.toNamed(Routes.LOGIN),
//                           child: Text(
//                             "Skip, I’ll confirm later",
//                             textAlign: TextAlign.center,
//                             style:
//                                 TextStyle(fontSize: 16, color: Colors.black45),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         RichText(
//                           text: TextSpan(children: [
//                             TextSpan(
//                                 text:
//                                     'Did not receive the email ? Check your spam filter, or ',
//                                 style: TextStyle(color: Colors.black)),
//                             TextSpan(
//                                 text: 'try another email address',
//                                 style: TextStyle(color: bgLogin1))
//                           ]),
//                           textAlign: TextAlign.center,
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
