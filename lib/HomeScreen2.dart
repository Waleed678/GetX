import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen2')),
     body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
            TextButton(onPressed: (){
              Get.back();
              Get.back();
            }, child: Text('Go back'))
          ],
        ),
      ),
    );
  }
}