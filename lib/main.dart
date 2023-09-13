import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/Change_Lang.dart';
import 'package:getx_app/HomeScreen.dart';
import 'package:getx_app/Login_Screen.dart';

import 'State_Management.dart';
// import 'package:getx_app/Getx_navigator.dart';
// import 'package:getx_app/HomeScreen1.dart';
// import 'package:getx_app/HomeScreen2.dart';
// import 'package:getx_app/Theme_Mode.dart';
// import 'package:getx_app/languages.dart';

// import 'HeightWidth.dart';




void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    //  translations: Languages(),
    //  locale: Locale('en' , 'Us'),
     // fallbackLocale: Locale('en' , 'Us'),
      home: LoginScreen(),
     
     // For Go to nextpages through Name
      // getPages: [
      //   GetPage(name: '/', page: () => HomeScreen1(),),
      //   GetPage(name: '/ScreenOne', page: () => HomeScreen2(),),
      //   GetPage(name: '/ScreenTwo', page: () => HomeScreen2(),)
      // ],
    );
  }
}